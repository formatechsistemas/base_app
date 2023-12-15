import 'package:coleta_solo/core/services/analytics_service.dart';
import 'package:coleta_solo/modules/home/home_controller.dart';
import 'package:coleta_solo/widgets/shared/controlled_screen.dart';
import 'package:coleta_solo/widgets/shared/formatech_app_bar.dart';
import 'package:coleta_solo/widgets/shared/formatech_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends ControlledScreen<HomeController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FormatechScaffold(
      appBar: const FormatechAppBar(title: 'HomePage'),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AnalyticsService.capture('HomePage button clicked');
          },
          child: const Text(
            'HomePage',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeController createController() => HomeController();

  @override
  void onRefreshAfterBackgrounded() {}
}
