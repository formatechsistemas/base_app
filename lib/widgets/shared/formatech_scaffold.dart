import 'package:coleta_solo/core/services/feature_service.dart';
import 'package:coleta_solo/widgets/shared/update_necessary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormatechScaffold extends StatelessWidget {
  const FormatechScaffold({
    super.key,
    this.innerKey,
    this.appBar,
    this.body,
    this.drawer,
    this.drawerEnableOpenDragGesture,
    this.onDrawerChanged,
    this.backgroundColor,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.floatingActionButtonLocation,
    this.hideWorkOrderTimer = false,
    this.removeDeviceBottomPadding = false,
  });

  final Key? innerKey;
  final Widget? appBar;
  final Widget? body;
  final Widget? drawer;
  final bool? drawerEnableOpenDragGesture;
  final void Function(bool)? onDrawerChanged;
  final Color? backgroundColor;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool hideWorkOrderTimer;
  final bool removeDeviceBottomPadding;

  FormatechScaffold copyWith({final Widget? body}) {
    return FormatechScaffold(
      innerKey: innerKey,
      appBar: appBar,
      body: body,
      drawer: drawer,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
      onDrawerChanged: onDrawerChanged,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButtonLocation: floatingActionButtonLocation,
      hideWorkOrderTimer: hideWorkOrderTimer,
      removeDeviceBottomPadding: removeDeviceBottomPadding,
    );
  }

  MediaQueryData _mediaQueryData(BuildContext context) {
    final data = MediaQuery.of(context).removePadding(
      removeTop: appBar != null,
    );

    return data;
  }

  double _getPaddingBottom({required BuildContext context}) {
    var deviceBottomPadding = MediaQuery.of(context).padding.bottom;
    if (deviceBottomPadding == 0) {
      deviceBottomPadding = 8;
    }

    return deviceBottomPadding;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => drawer == null,
      child: Scaffold(
        key: innerKey,
        body: Stack(
          children: [
            Column(
              children: [
                if (appBar != null) appBar!,
                if (body != null)
                  MediaQuery(
                    data: _mediaQueryData(context),
                    child: Expanded(
                      child: GestureDetector(
                        child: body,
                        onTap: () {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                  ),
                if (removeDeviceBottomPadding)
                  SizedBox(
                    height: _getPaddingBottom(
                      context: context,
                    ),
                    width: double.infinity,
                  ),
              ],
            ),
            Obx(() {
              final shouldShowUpdatePopup = FeatureService.showUpdateAppBlock.value;

              if (!shouldShowUpdatePopup) return const SizedBox.shrink();

              return const SizedBox.expand(
                child: UpdateNecessary(),
              );
            }),
          ],
        ),
        backgroundColor: backgroundColor,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton != null
            ? Obx(() {
                final shouldShowUpdatePopup = FeatureService.showUpdateAppBlock.value;

                if (shouldShowUpdatePopup) return const SizedBox.shrink();

                var paddingBottom = 0.0;

                return AnimatedPadding(
                  duration: 250.milliseconds,
                  padding: EdgeInsets.only(bottom: paddingBottom),
                  child: floatingActionButton,
                );
              })
            : null,
        drawer: drawer,
        drawerEnableOpenDragGesture: drawerEnableOpenDragGesture ?? true,
        onDrawerChanged: onDrawerChanged,
        bottomNavigationBar: bottomNavigationBar != null
            ? SafeArea(
                left: false,
                right: false,
                top: false,
                child: bottomNavigationBar!,
              )
            : null,
      ),
    );
  }
}
