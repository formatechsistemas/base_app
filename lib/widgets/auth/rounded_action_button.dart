import 'package:base_app/theme/app_theme.dart';
import 'package:base_app/widgets/shared/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedActionButton extends StatelessWidget {
  const RoundedActionButton({
    super.key,
    required this.title,
    this.onTap,
    this.height,
    this.hasLoading = true,
  });

  final String title;
  final Future<void> Function()? onTap;
  final double? height;
  final bool hasLoading;

  @override
  Widget build(BuildContext context) {
    final _isLoading = false.obs;
    return Obx(() {
      final isLoading = _isLoading.value;

      return Expanded(
        child: InkWell(
          onTap: () async {
            _isLoading.value = true;
            await onTap;
            _isLoading.value = false;
          },
          child: Ink(
            height: height ?? 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppTheme.primaryColor,
            ),
            child: isLoading ? const LoadingIndicator() : Text(title),
          ),
        ),
      );
    });
  }
}
