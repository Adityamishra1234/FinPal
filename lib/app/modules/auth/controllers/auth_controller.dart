import 'package:get/get.dart';

import '../../../../common/app_constants.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController

  final count = 0.obs;
  @override
  void onInit() {
    goToFinancialAssessment = false;
    update();
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
