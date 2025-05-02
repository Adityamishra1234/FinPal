import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../common/app_images.dart';

class LandingPageController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0.obs;
  var showOnboardingScreen = false.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage(int totalPages) {
    if (currentPage.value < AppImages.onboardingImages.length - 1) {
      pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
    //
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
