import 'package:coleta_solo/core/services/auth_service.dart';
import 'package:coleta_solo/core/shared/screen_controller.dart';
import 'package:coleta_solo/core/shared/text_field_controller.dart';
import 'package:get/get.dart';

class AuthController extends ScreenController {
  final _authService = Get.find<AuthService>();
  final emailController = TextFieldController();
  final passwordController = TextFieldController();

  Future<void> login() async {
    final email = emailController.textEditingController.text;
    final password = passwordController.textEditingController.text;

    await _authService.login(email: email, password: password);
  }
}
