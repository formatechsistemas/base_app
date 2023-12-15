import 'package:base_app/core/models/user/user_model.dart';
import 'package:base_app/core/utils/api_utils.dart';
import 'package:base_app/core/repositories/user/user_repository_strategy.dart';

class UserRepositoryLocal implements UserRepositoryStrategy {
  @override
  Future<ApiResponse<List<UserModel>>> load() {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<UserModel>> loadById(String userId) {
    // TODO: implement loadById
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<UserModel>> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
