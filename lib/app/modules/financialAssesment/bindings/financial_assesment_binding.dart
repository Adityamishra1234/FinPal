import 'package:get/get.dart';

import '../controllers/financial_assessment_controller.dart';

class FinancialAssessmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinancialAssessmentController>(
      () => FinancialAssessmentController(),
    );
  }
}
