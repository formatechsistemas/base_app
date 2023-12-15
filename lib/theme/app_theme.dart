// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();
  // Design System
  static const dsBlue3 = Color.fromARGB(255, 77, 171, 253);
  static const dsBlue4 = Color.fromARGB(255, 33, 136, 252);
  static const dsWritingBody2 = Color.fromARGB(255, 110, 119, 129);
  static const dsWritingBody1 = Color.fromARGB(255, 140, 149, 159);
  static const dsWritingTitle2 = Color.fromRGBO(87, 96, 106, 1);
  static const dsPlaceholderDisable = Color.fromARGB(255, 208, 215, 222);
  static const dsDanger1 = Color.fromARGB(255, 250, 69, 73);
  static const dsShapesDivider = Color.fromARGB(255, 234, 238, 242);

  // Design System
  static const dsGray5 = Color.fromARGB(255, 110, 119, 129);
  static const dsGray4 = Color.fromARGB(255, 140, 149, 159);
  static const dsGray0 = Color.fromARGB(255, 240, 242, 247);
  static const dsGreen4 = Color.fromARGB(255, 46, 164, 78);
  static const dsYellow4 = Color.fromARGB(255, 191, 135, 22);
  static const dsRed5 = Color.fromARGB(255, 207, 34, 45);

  // Colors
  static const primaryColor = Color.fromARGB(255, 24, 144, 255);
  static const primaryColorAlt = Color.fromARGB(255, 7, 99, 179);
  static const errorColor = Color.fromARGB(255, 211, 47, 47);
  static const successColor = Color.fromARGB(255, 1, 200, 140);
  static const dividerColor = Color.fromARGB(40, 0, 0, 0);
  static const warningColor = Color.fromARGB(255, 250, 173, 20);
  static const dangerColor = Color.fromARGB(255, 244, 67, 54);
  static const backgroundColor = Colors.white;
  static const cameraToggleButtonBackgroundColor = Color.fromARGB(255, 50, 56, 63);
  static const inAppCameraMainButtonBackgroundColor = Colors.white38;
  static const inAppCameraMainButtonForegroundColor = Colors.white;

  static const _grey100 = Color.fromARGB(255, 245, 245, 245);
  static const _grey200 = Color.fromARGB(255, 245, 245, 245);
  static const _grey400 = Color.fromARGB(255, 189, 189, 189);

  static const splashColor = Color.fromARGB(255, 48, 93, 246);

  static const failureColor = Colors.red;

  static const addItemColor = Color.fromARGB(255, 25, 148, 58);

  static const yesColor = Color.fromARGB(255, 1, 200, 140);
  static const noColor = Color.fromARGB(255, 255, 56, 53);
  static const naColor = Color.fromARGB(255, 102, 102, 102);

  static const inspectionPassColor = Color.fromARGB(255, 1, 200, 140);
  static const inspectionFlagColor = Color.fromARGB(255, 255, 170, 43);
  static const inspectionFailColor = Color.fromARGB(255, 255, 56, 53);

  static const primaryFontColor = Colors.black;
  static const secondaryFontColor = Color.fromARGB(255, 127, 130, 134);
  static const onPrimaryColor = Colors.white;

  static const mentionColor = Color.fromARGB(255, 207, 233, 255);

  static const secondaryTextColor = Color.fromARGB(255, 103, 120, 136);
  static const tertiaryTextColor = Color.fromARGB(255, 142, 152, 163);

  static const offBlackIconColor = Color.fromARGB(255, 51, 51, 51);
  static const outlinedButtonDefaultBorderColor = Color.fromARGB(255, 217, 217, 217);
  static const imageCircularButtonIconColor = Color.fromARGB(255, 88, 96, 106);

  static const disabledColor = Colors.grey;

  static const genericListItemDividerColor = Color.fromRGBO(238, 238, 238, 1);

  static const avatarIconColor = Color.fromARGB(255, 84, 143, 251);
  static const deactivatedAvatarIconColor = Color.fromARGB(255, 170, 170, 170);
  static const avatarBackgroundColor = Color.fromARGB(255, 219, 237, 255);
  static const avatarTooltipBackgroundColor = Color.fromARGB(255, 30, 59, 141);
  static const avatarBorderColor = Color.fromARGB(255, 232, 232, 232);

  static const fileSelectionIconColor = Color.fromARGB(102, 24, 135, 252);

  // Offline
  static const unavailableOfflineErrorPageIconColor = dsShapesDivider;
  static const unavailableOfflineErrorPageTextColor = dsWritingBody2;

  // Base
  static const baseBorderRadius = BorderRadius.all(Radius.circular(2));
  static const baseHighlightColor = Color.fromARGB(50, 220, 220, 220);
  static const baseSplashColor = Color.fromARGB(75, 220, 220, 220);

  // Buttons
  static const elevatedButtonElevation = 0.0;
  static const elevatedButtonColor = primaryColor;
  static const elevatedButtonOverlayColor = Color.fromARGB(255, 32, 160, 255);
  static const elevatedButtonDisabledColor = Color.fromARGB(255, 220, 220, 220);
  static const outlinedButtonOverlayColor = Color.fromARGB(75, 214, 232, 255);
  static const textButtonOverlayColor = Color.fromARGB(10, 24, 144, 255);
  static const buttonContentDisabledColor = Color.fromRGBO(190, 190, 190, 1);
  static const buttonDisabledBorderColor = outlinedButtonDefaultBorderColor;
  static const buttonDisabledBackgroundColor = Color.fromARGB(255, 242, 242, 242);
  static const buttonDisabledTextColor = Color.fromARGB(50, 0, 0, 0);

  // Checkbox

  static const enabledCheckboxBorderColor = _grey400;
  static const enabledCheckboxBackgroundColor = Colors.transparent;
  static const selectedCheckboxBorderColor = primaryColor;
  static const selectedCheckboxBackgroundColor = primaryColor;
  static const disabledCheckboxBorderColor = _grey400;
  static const disabledCheckboxBackgroundColor = _grey200;
  static const disabledSelectedCheckboxBorderColor = _grey400;
  static const disabledSelectedCheckboxBackgroundColor = _grey400;
  static const checkboxIconColor = Colors.transparent;
  static const checkboxSelectedIconColor = Colors.white;

  // Select form field
  static const selectFormFieldTagBackgroundColor = _grey200;

  // Card
  static const cardBorderColor = Color.fromARGB(100, 188, 198, 208);
  static const cardElevation = 0.0;
  static const cardBorderRadius = BorderRadius.all(Radius.circular(4));
  static const cardBorderSize = 1.0;

  // Settings
  static const settingsListItemHeight = 52.0;

  // AppBar
  static const appBarHeight = 46.0;
  static const appBarElevation = 0.0;
  static const appBarButtonSplashRadius = 20.0;
  static const appBarPrimaryColor = Color.fromARGB(255, 23, 25, 45);
  static const appBarSecondaryColor = Color.fromARGB(255, 24, 135, 252);

  static const textFormFieldStyle = TextStyle(color: Colors.black);
  static const readOnlyTextFormFieldStyle = TextStyle(color: Colors.grey);
  static const disabledTextFormFieldStyle = TextStyle(color: disabledColor);
  static const formItemBackgroundColor = Colors.white;
  static const formItemDisabledBackgroundColor = _grey100;
  static final placeholderTextStyle = TextStyle(
    color: Colors.grey[400],
    fontWeight: FontWeight.normal,
    fontSize: 15,
  );

  static const deleteBackgroundColor = Color.fromARGB(255, 255, 77, 79);
  static const deleteForegroundColor = Color.fromRGBO(255, 255, 255, 1);

  /// Returns the base padding for a form page.
  /// This should only be used in pages, NOT in popups.
  ///
  /// This padding already considers the native bottom spacing (generally used by iOS)
  static EdgeInsets getFormPagePadding(BuildContext context) {
    final viewBottomPadding = MediaQuery.of(context).padding.bottom;
    return EdgeInsets.only(
      top: 16,
      left: 16,
      right: 16,
      bottom: viewBottomPadding > 0 ? viewBottomPadding : 16,
    );
  }

  /// Returns the base padding that should be used for popups with forms
  static EdgeInsetsGeometry get baseFormPopupPadding {
    return const EdgeInsets.all(16);
  }

  static InputDecoration getBaseInputDecoration() {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      isCollapsed: true,
      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
      prefixIconConstraints: const BoxConstraints(),
      suffixIconConstraints: const BoxConstraints(),
      hintStyle: placeholderTextStyle,
      focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: primaryColor)),
      focusedErrorBorder:
          OutlineInputBorder(borderSide: BorderSide(color: errorColor.withAlpha(100))),
      errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: errorColor)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[350]!),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[350]!,
        ),
      ),
      errorMaxLines: 8,
    );
  }

  static ThemeData toThemeData() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        splashColor: baseSplashColor,
        highlightColor: baseHighlightColor,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: primaryColor,
          onSecondary: Colors.white,
          error: errorColor,
          onError: Colors.white,
          background: Colors.white,
          onBackground: primaryFontColor,
          surface: Colors.grey[50]!,
          onSurface: primaryFontColor,
        ),
        dividerColor: dividerColor,
        cardTheme: const CardTheme(
            elevation: cardElevation,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: cardBorderRadius,
                side: BorderSide(color: cardBorderColor, width: cardBorderSize))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.disabled)) {
                    return elevatedButtonDisabledColor;
                  }

                  return elevatedButtonColor;
                }),
                overlayColor: MaterialStateProperty.all(elevatedButtonOverlayColor),
                elevation: MaterialStateProperty.all(elevatedButtonElevation))),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style:
                ButtonStyle(overlayColor: MaterialStateProperty.all(outlinedButtonOverlayColor))),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(textButtonOverlayColor),
        )),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: primaryColorAlt));
  }
}
