import 'package:get/get.dart';

class ProfileSetupController extends GetxController {
  //TODO: Implement ProfileSetupController

  final count = 0.obs;
  final showLoaderForUploading = false.obs;
  bool? showScreens;
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

  void makeScreenChange (value){
    showLoaderForUploading.value = false;
    if(value){
      showScreens = value;

    }
    else{
      showScreens = value;
    }

  }
}
