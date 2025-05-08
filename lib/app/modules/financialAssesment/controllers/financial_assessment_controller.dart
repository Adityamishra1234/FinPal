import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';


class FinancialAssessmentController extends GetxController {


  final count = 1.obs;
  RxInt? current = RxInt(-1);
  final QuillController quillController = QuillController.basic();
  RxInt charCount = 0.obs;

  @override
  void onInit() {
    quillController.addListener(() {
      final text = quillController.document.toPlainText();
      charCount.value = text.length;
    });
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

  void increment(){
    if(count.value < 14){
      count.value++;
    }
  }
}
