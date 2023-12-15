import 'package:base_app/core/models/user/user_model.dart';
import 'package:base_app/core/repositories/user/user_repository.dart';
import 'package:base_app/core/services/controlled_service.dart';
import 'package:get/get.dart';

class AuthService extends ControlledService {
  final _userRepository = Get.find<UserRepository>();

  static UserModel? loggedUser;

  static var hasLoggedOut = false;
  static var hasLoggedIn = true;
  static Future<bool> get hasAuthenticated async => false;

  String? getUserId() {
    return loggedUser?.id;
  }

  @override
  void onInit() {
    //_cacheUsers();
    super.onInit();
  }

  Future<void> _cacheUsers() => _userRepository.context.load();

  Future<void> login({required String email, required String password}) async {
    return;
  }

  Future<void> fetchFromServer() async {
    //TODO: fetch user data from server
  }

  @override
  Future<void> onDataClean() {
    // TODO: implement onDataClean
    throw UnimplementedError();
  }
}
