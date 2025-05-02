import 'package:flutter/material.dart';

class AppContainers extends StatelessWidget {
  final double? borderRadius, height, width;
  final LinearGradient gradient;
  final dynamic child;
  const AppContainers({super.key, required this.borderRadius, this.height, this.width, required this.gradient, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
        width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        gradient: gradient,
      ),
      child: child,
    );
  }
}
