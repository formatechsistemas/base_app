import 'package:flutter/material.dart';

class FormatechAppBar extends StatelessWidget {
  const FormatechAppBar({super.key, required this.title, this.subtitle});

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }
}
