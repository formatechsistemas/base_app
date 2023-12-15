import 'dart:io';

import 'package:coleta_solo/core/utils/app_utils.dart';
import 'package:coleta_solo/theme/app_theme.dart';
import 'package:coleta_solo/widgets/shared/button.dart';
import 'package:flutter/material.dart';

class UpdateNecessary extends StatelessWidget {
  const UpdateNecessary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.white,
      child: WillPopScope(
          onWillPop: () async => false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/update-app-tractian.png',
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16, top: 16),
                child: Text(
                  'Sua versão do app é muito antiga, atualize para continuar usando',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const Text(
                'Nova versão necessária',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.secondaryFontColor,
                  height: 1.35,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Button.primary(
                padding: const EdgeInsets.symmetric(vertical: 12),
                expand: true,
                content: Text(
                  'Ir para ${Platform.isAndroid ? 'Play Store' : 'App Store'}',
                ),
                onPressed: AppUtils.openStore,
              ),
              const SizedBox(height: 12),
              const Button.link(
                padding: EdgeInsets.symmetric(vertical: 12),
                expand: true,
                content: Text(
                  'Fechar o app',
                ),
                onPressed: AppUtils.close,
              )
            ],
          )),
    );
  }
}
