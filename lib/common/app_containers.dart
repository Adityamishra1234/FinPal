import 'package:flutter/material.dart';

import 'app_colors.dart';

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



BoxShadow commonBoxShadow({
  Color color =  Colors.black12,
  double spreadRadius = 0.2, //0.2
  double blurRadius = 1, //0.7
  Offset offset = const  Offset(0, 0),
}) {
  return BoxShadow(
    color: color,
    spreadRadius: spreadRadius,
    blurRadius: blurRadius,
    offset: offset,
  );
}

