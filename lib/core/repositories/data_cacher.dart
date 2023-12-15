import 'dart:async';

import 'package:isar/isar.dart';

mixin DataCacher {
  abstract final Completer<Isar> database;
  Future<bool> cacheData(Future<void> Function(Isar isar) dataCacher) async {
    try {
      final isar = await database.future;
      await dataCacher(isar);

      return true;
    } catch (error, _) {
      return false;
    }
  }
}
