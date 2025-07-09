import 'package:get/get.dart';

import '../controllers/link_new_bank_controller.dart';

class LinkNewBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LinkNewBankController>(
      () => LinkNewBankController(),
    );
  }
}
