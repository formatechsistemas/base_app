import 'package:flutter/material.dart';

abstract class ColorUtil {
  /// Parses a color from a hex string.
  static Color? fromHex(String? color) {
    if (color == null) {
      return null;
    }

    var hexColor = color.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    final value = int.tryParse(hexColor, radix: 16);

    return value == null ? null : Color(value);
  }

  /// Finds the color between two colors
  static Color blendColors(Color a, Color b) {
    return Color.fromARGB((a.alpha + b.alpha) ~/ 2, (a.red + b.red) ~/ 2, (a.green + b.green) ~/ 2,
        (a.blue + b.blue) ~/ 2);
  }
}
