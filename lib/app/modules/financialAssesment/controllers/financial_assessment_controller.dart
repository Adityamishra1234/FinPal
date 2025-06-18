import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';


class FinancialAssessmentController extends GetxController {


  final count = 1.obs;
  RxInt? current = RxInt(-1);
  final QuillController quillController = QuillController.basic();
  RxInt charCount = 0.obs;
  //for categories.
  RxInt? currentIndexForCategories = 0.obs;
  RxList currentIndexForCategoriesList = [].obs;
  //for goal in mind
  RxList goals = [].obs;
  //track
  RxInt? track = RxInt(-1);
  //feeling situation
  RxInt? feelingSituation = RxInt(-1);
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
    if(count.value < 12){
      count.value++;
    }
  }
}
