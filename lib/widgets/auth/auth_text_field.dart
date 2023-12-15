import 'package:coleta_solo/core/shared/text_field_controller.dart';
import 'package:coleta_solo/widgets/shared/controlled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.isPassword = false,
    this.isRequired = true,
    this.validator,
  });

  final TextFieldController controller;
  final bool isPassword;
  final bool isRequired;
  final String? hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final _isVisible = false.obs;

    return Obx(() {
      final isVisible = _isVisible.value;

      return Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: ControlledTextField(
          controller: controller,
          obscureText: !isVisible,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            suffixIcon: isPassword
                ? IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {
                      _isVisible.value = !_isVisible.value;
                    },
                  )
                : null,
          ),
          validator: (value) {
            if (isRequired) {
              if (value == null || value.isEmpty) {
                return 'Campo obrigatório';
              }
            }

            return validator?.call(value);
          },
        ),
      );
    });
  }
}
