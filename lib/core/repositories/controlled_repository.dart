import 'dart:async';
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class ControlledRepository<T> extends GetxService {
  static bool isOfflineModeActive = false; // Is updated by ConnectityService

  static final repositories = <ControlledRepository>[];
  static Iterable<CollectionSchema<dynamic>> get schemas => repositories.map((e) => e.schema);
  static final _checksForInvalidData = <Future<void> Function(Isar)>[];
  static final _globalIsar = Completer<Isar>();
  static const databaseKey = 'RepositoriesInstance';

  static bool _startedInitializingRepositories = false;

  static Future<Isar?> openIsar({
    required List<CollectionSchema<dynamic>> schemas,
    int retryCount = 0,
    bool isFromIsolate = false,
  }) async {
    try {
      final dir = await getApplicationDocumentsDirectory();

      return await Isar.open(
        schemas.toList(),
        name: databaseKey,
        maxSizeMiB: 512,
        directory: dir.path,
      );
    } catch (error, _) {
      if (retryCount >= 5) return null;

      await Future<void>.delayed(const Duration(milliseconds: 300));
      return openIsar(
        schemas: schemas,
        retryCount: retryCount + 1,
        isFromIsolate: isFromIsolate,
      );
    }
  }

  static Future<void> initializeRepositories() async {
    if (_startedInitializingRepositories) return;
    _startedInitializingRepositories = true;

    final instance = await openIsar(schemas: schemas.toList());

    if (instance == null) {
      return;
    }

    await Future.wait(_checksForInvalidData.map((e) => e(instance)));

    _calculateIsarMetrics(instance, schemas);

    _globalIsar.complete(instance);
  }

  static Future<Map<String, dynamic>> _calculateIsarMetrics(
      Isar instance, Iterable<CollectionSchema<dynamic>> currentSchemas) async {
    final entries = await Future.wait(
      currentSchemas.map((schema) async {
        final collection = instance
            // ignore: invalid_use_of_protected_member
            .getCollectionByNameInternal(schema.name);

        final size = await collection?.getSize() ?? 0;
        final count = await collection?.count() ?? 0;

        return [
          MapEntry('${schema.name}Size', size.toDouble() / 1024),
          MapEntry('${schema.name}Count', count),
        ];
      }),
    );

    final totalEntry = MapEntry('TotalIsarSize', await instance.getSize());
    return Map.fromEntries([...entries.flattened, totalEntry]);
  }

  static Future<void> cleanUserCache() async {
    if (_globalIsar.isCompleted) {
      final isar = await _globalIsar.future;
      await isar.writeTxn(isar.clear);
    }
  }

  Future<void> loadDataToCache() async {}

  static Future<void> loadAllDataToCache() => Future.wait(
      repositories.map((repository) => repository.loadDataToCache().onError((error, stackTrace) {
            if (error == null) return;
          })));

  Future<void> checkForInvaildData(Isar instance) async {}

  @override
  void onInit() {
    _checksForInvalidData.add(checkForInvaildData);
    repositories.add(this);
    _globalIsar.future.then(isar.complete);

    super.onInit();
  }

  final isar = Completer<Isar>();

  CollectionSchema get schema;
}
