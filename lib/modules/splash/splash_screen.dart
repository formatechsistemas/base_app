import 'package:base_app/modules/splash/splash_controller.dart';
import 'package:base_app/widgets/shared/controlled_screen.dart';
import 'package:base_app/widgets/shared/loading_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen extends ControlledScreen<SplashController> {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: LoadingIndicator(),
      ),
    );
  }

  @override
  SplashController createController() => SplashController();

  @override
  void onRefreshAfterBackgrounded() {}
}
