import 'package:flutter/material.dart';

import '../common/app_colors.dart';

int currentIndex = 0;
dotContainer(int index) => Container(
  height: 10,
  width: currentIndex == index ? 18 : 12,
  margin: const EdgeInsets.symmetric(horizontal: 6),
  decoration: BoxDecoration(
    color: currentIndex == index ? AppColors.primaryColor : AppColors.white,
    borderRadius: BorderRadius.circular(20),
  ),
);
