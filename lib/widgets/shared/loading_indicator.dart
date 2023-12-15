import 'package:base_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatefulWidget {
  /// Creates an loading indicator.
  const LoadingIndicator({super.key, this.size = 35});

  // The width and height of the loading icon
  final double size;

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 40,
        maxWidth: 40,
      ),
      child: RotationTransition(
        turns: _animation,
        child: const Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  _Dot(
                    color: AppTheme.primaryColor,
                  ),
                  SizedBox(width: 10),
                  _Dot(
                    color: AppTheme.dsBlue3,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  _Dot(
                    color: AppTheme.dsBlue3,
                  ),
                  SizedBox(width: 10),
                  _Dot(
                    color: AppTheme.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
