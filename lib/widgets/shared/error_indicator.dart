import 'package:base_app/theme/app_icons.dart';
import 'package:base_app/theme/app_theme.dart';
import 'package:base_app/widgets/shared/button.dart';
import 'package:base_app/widgets/shared/icons/custom_icon.dart';
import 'package:base_app/widgets/shared/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ErrorIndicatorType {
  generic(
    titleKey: 'genericErrorTitle',
  ),
  forbidden(
    titleKey: 'forbiddenErrorTitle',
    descriptionKey: 'forbiddenErrorDescription',
  ),
  disconnected(
    titleKey: 'loadingError',
    descriptionKey: 'genericErrorDescription',
  ),
  genericNetwork(
    titleKey: 'genericErrorTitle',
    descriptionKey: 'genericErrorDescription',
  ),
  unavailableOffline(
    titleKey: 'unavailableOfflineErrorTitle',
    descriptionKey: 'unavailableOfflineErrorDescription',
  );

  const ErrorIndicatorType({
    required this.titleKey,
    this.descriptionKey,
  });

  final String titleKey;
  final String? descriptionKey;

  bool get isNetworkError {
    switch (this) {
      case ErrorIndicatorType.disconnected:
      case ErrorIndicatorType.genericNetwork:
        return true;
      case ErrorIndicatorType.unavailableOffline:
      case ErrorIndicatorType.generic:
      case ErrorIndicatorType.forbidden:
        return false;
    }
  }

  bool get isCacheError {
    switch (this) {
      case ErrorIndicatorType.unavailableOffline:
        return true;
      case ErrorIndicatorType.disconnected:
      case ErrorIndicatorType.genericNetwork:
      case ErrorIndicatorType.generic:
      case ErrorIndicatorType.forbidden:
        return false;
    }
  }

  bool get canRetry {
    switch (this) {
      case ErrorIndicatorType.unavailableOffline:
      case ErrorIndicatorType.forbidden:
        return false;
      case ErrorIndicatorType.disconnected:
      case ErrorIndicatorType.genericNetwork:
      case ErrorIndicatorType.generic:
        return true;
    }
  }
}

class ErrorIndicator extends StatefulWidget {
  /// Creates an error indicator.
  const ErrorIndicator(
      {super.key, this.type = ErrorIndicatorType.genericNetwork, this.onClickTryAgain});

  /// Function to be called when clicking the `Try Again` button.
  ///
  /// If [onClickTryAgain] in not provided, the button is not rendered.
  ///
  /// Hidden if [type] is [ErrorIndicatorType.forbidden]
  final Future<void> Function()? onClickTryAgain;

  /// The type of error
  final ErrorIndicatorType type;

  @override
  State<ErrorIndicator> createState() => _ErrorIndicatorState();
}

class _ErrorIndicatorState extends State<ErrorIndicator> {
  final isLoading = false.obs;

  Widget _getIcon() {
    const color = Colors.grey;

    switch (widget.type) {
      case ErrorIndicatorType.disconnected:
      case ErrorIndicatorType.genericNetwork:
        return const Icon(
          Icons.cloud_off,
          color: color,
          size: 80,
        );
      case ErrorIndicatorType.unavailableOffline:
        return const Icon(
          Icons.cloud_off,
          color: AppTheme.unavailableOfflineErrorPageIconColor,
          size: 80,
        );
      case ErrorIndicatorType.forbidden:
        return const CustomIcon(icon: AppIcons.antdLockOutlined, color: color, size: 80);
      case ErrorIndicatorType.generic:
        return const CustomIcon(icon: AppIcons.bsExclamationTriangle, color: color, size: 80);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _getIcon(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              widget.type.titleKey.tr,
              style: const TextStyle(
                fontSize: 20,
                color: AppTheme.unavailableOfflineErrorPageTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (widget.type.descriptionKey != null)
            Text(
              widget.type.descriptionKey!.tr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: AppTheme.unavailableOfflineErrorPageTextColor,
              ),
            ),
          if (widget.onClickTryAgain != null && widget.type.canRetry)
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 48, right: 48),
                    child: Obx(() {
                      final showLoading = isLoading.isTrue;

                      return Button.primary(
                          minimumSize: const Size.fromHeight(40),
                          onPressed: !showLoading
                              ? () async {
                                  isLoading.value = true;
                                  await widget.onClickTryAgain!();
                                  isLoading.value = false;
                                }
                              : null,
                          content: showLoading
                              ? const LoadingIndicator(
                                  size: 20,
                                )
                              : Text('tryAgain'.tr));
                    }),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
