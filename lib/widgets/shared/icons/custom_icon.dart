// ignore_for_file: comment_references

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.color,
    this.size,
  });

  /// Icon Path. Access [AppIcons] to get all icons.
  final String icon;

  /// Icon color
  final Color? color;

  /// Icon size, it defines both width and height of the icon
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(
          child: SvgPicture.asset(
        icon,
        color: color,
        width: size,
        height: size,
      )),
    );
  }
}
