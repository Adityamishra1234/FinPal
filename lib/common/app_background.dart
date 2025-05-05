import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_images.dart';

class CustomBackground extends StatelessWidget {
  final Widget? child;
  const CustomBackground({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: AppColors.white,
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                AppImages.customBgBottom,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                AppImages.customBgTop,
                color: AppColors.bgTop
              ),
            ),

            // Centered child
            child!,
          ],
        ),
      ),
    );

  }
}