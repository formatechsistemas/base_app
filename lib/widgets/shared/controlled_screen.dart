import 'package:coleta_solo/core/flavors.dart';
import 'package:coleta_solo/core/shared/screen_controller.dart';
import 'package:coleta_solo/routes/app_navigator.dart';
import 'package:coleta_solo/widgets/shared/formatech_scaffold.dart';
import 'package:coleta_solo/widgets/shared/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Screens with controllers must extends this class instead of `GetView`.
///
abstract class ControlledScreen<T extends ScreenController> extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ControlledScreen({super.key});

  Widget build(BuildContext context);

  /// Method that is called to create the controller.
  ///
  /// Note: this function in only called on `initState` and its value
  /// is stored internally
  T createController();

  /// Method that is called when the app is been reopened after some time.
  ///
  /// Should be used to refresh the content of the page,
  /// to keep the content updated.
  void onRefreshAfterBackgrounded();

  void init() {}

  void dispose() {}

  /// Method that is called to get the controller tag.
  ///
  /// Note: this function in only called on `initState` and its value
  /// is stored internally
  String? get controllerTag => null;

  /// Get the current controller
  late final T controller;

  late final String? _tag;

  String get _controllerKey => '$T-$_tag';

  void _onInitState() {
    _tag = controllerTag;

    if (Get.isRegistered<T>(tag: _tag)) {
      _printDebug('Controller already registered. Using it!');
      controller = Get.find<T>(tag: _tag);
    } else {
      controller = Get.put(createController(), tag: _tag, permanent: true);
      _printDebug('Created!');
      AppNavigator.addControlledScreenOfRoute(Get.currentRoute, this);
    }

    AppNavigator.increaseControllerUsage(_controllerKey);

    init();
  }

  void _onDispose() {
    final currentCount = AppNavigator.decreaseAndMaybeRemoveControllerUsage(_controllerKey);

    if (AppNavigator.isPoppingNativePages) {
      _printDebug('Dispose was ignored since it will be restored soon');
    } else {
      if (currentCount == 0) {
        _printDebug('Not used anymore. Disposing...');

        AppNavigator.removeControlledScreenOfRoute(Get.currentRoute);
        Get.delete<T>(tag: _tag, force: true);
      } else {
        _printDebug("Controller wasn't disposed since it used in $currentCount other place(s)");
      }
    }

    dispose();
  }

  void _printDebug(String message) {
    F.printDev('[ControlledScreen $_controllerKey] $message');
  }

  @override
  State<ControlledScreen<T>> createState() => _ControlledScreenState<T>();
}

class _ControlledScreenState<T extends ScreenController> extends State<ControlledScreen<T>> {
  @override
  void initState() {
    widget._onInitState();
    super.initState();
  }

  @override
  void dispose() {
    widget._onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final content = widget.build(context);
    return Obx(() {
      final isLoading = widget.controller.isLoading.value;

      if (content is FormatechScaffold) {
        return isLoading
            ? content.copyWith(
                body: const Center(child: LoadingIndicator()),
              )
            : content;
      }

      return content;
    });
  }
}
