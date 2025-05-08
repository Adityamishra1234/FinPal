import 'package:finance_app/common/app_constants.dart';
import 'package:get/get.dart';

class RegistrationPageController extends GetxController {
  //TODO: Implement RegistrationPageController

  final count = 0.obs;
  @override
  void onInit() {
    goToFinancialAssessment = true;
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
