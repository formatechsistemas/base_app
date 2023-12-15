import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldController {
  final textEditingController = TextEditingController();
  final Rx<String?> _error = null.obs;

  String? get error => _error.value;

  void setError(String message) {
    _error.value = message;
  }

  void onChanged() {
    _error.value = null;
  }
}
