import 'package:get/get.dart';

import '../controllers/confirm_transfer_controller.dart';

class ConfirmTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmTransferController>(
      () => ConfirmTransferController(),
    );
  }
}
