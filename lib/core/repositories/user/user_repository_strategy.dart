import 'package:base_app/core/models/user/user_model.dart';
import 'package:base_app/core/utils/api_utils.dart';

abstract class UserRepositoryStrategy {
  Future<ApiResponse<List<UserModel>>> load();

  Future<ApiResponse<UserModel>> loadById(String userId);

  Future<ApiResponse<UserModel>> login({required String email, required String password});
}
