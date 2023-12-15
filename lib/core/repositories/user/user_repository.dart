import 'package:coleta_solo/core/isar/user/user_isar_model.dart';
import 'package:coleta_solo/core/repositories/controlled_repository.dart';
import 'package:coleta_solo/core/repositories/user/user_repository_local.dart';
import 'package:coleta_solo/core/repositories/user/user_repository_remote.dart';
import 'package:coleta_solo/core/repositories/user/user_repository_strategy.dart';
import 'package:coleta_solo/core/services/connectivity_service.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

class UserRepository extends ControlledRepository {
  late UserRepositoryLocal local;
  late UserRepositoryRemote remote;
  final _connectivityService = Get.find<ConnectivityService>();

  @override
  void onInit() {
    local = UserRepositoryLocal();
    remote = UserRepositoryRemote();
    super.onInit();
  }

  UserRepositoryStrategy get context => _connectivityService.isOffline.isTrue ? local : remote;

  @override
  CollectionSchema get schema => UserIsarModelSchema;
}
