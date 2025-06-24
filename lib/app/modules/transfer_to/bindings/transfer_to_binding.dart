import 'package:get/get.dart';

import '../controllers/transfer_to_controller.dart';

class TransferToBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransferToController>(
      () => TransferToController(),
    );
  }
}
