import 'package:base_app/modules/auth/auth_controller.dart';
import 'package:base_app/theme/app_theme.dart';
import 'package:base_app/widgets/auth/auth_text_field.dart';
import 'package:base_app/widgets/auth/rounded_action_button.dart';
import 'package:base_app/widgets/shared/controlled_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends ControlledScreen<AuthController> {
  AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Image
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            color: AppTheme.backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                AuthTextField(
                  controller: controller.emailController,
                  hintText: 'EMAIL',
                  validator: (value) {
                    if (value != null) {
                      if (!value.contains('@')) {
                        return 'Email Inválido';
                      }
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 16),
                AuthTextField(
                  controller: controller.passwordController,
                  hintText: 'SENHA',
                  isPassword: true,
                ),
                const SizedBox(height: 16),
                RoundedActionButton(
                  title: 'ACESSAR SISTEMA',
                  onTap: controller.login,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  AuthController createController() => AuthController();

  @override
  void onRefreshAfterBackgrounded() {}
}
