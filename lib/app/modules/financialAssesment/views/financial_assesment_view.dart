import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_buttons.dart';
import 'package:finance_app/common/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_textField.dart';
import '../../../../common/app_texts.dart';
import '../../../../widgets/financial_assesment/assessment_fragments.dart';
import '../controllers/financial_assessment_controller.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class FinancialAssessmentView extends GetView<FinancialAssessmentController> {
   FinancialAssessmentView({super.key});

  var controller = Get.put(FinancialAssessmentController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List<Widget> pages = [
      AssessmentFragment1(height:height,width: width,context: context,),
      AssessmentFragment2(height:height,width: width,context: context,),
      AssessmentFragment3(height:height,width: width,context: context,),
      AssessmentFragment4(height:height,width: width,context: context,),
      AssessmentFragment5(height:height,width: width,context: context,),
      AssessmentFragment6(height:height,width: width,context: context,),
      AssessmentFragment7(height:height,width: width,context: context,),
      AssessmentFragment8(),
      AssessmentFragment9(),
      AssessmentFragment10(),
      AssessmentFragment11(height:height,width: width,context: context,),
      AssessmentFragment12(height:height,width: width,context: context,),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height* 0.004,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: BackButton(
                          onPressed: ()=> Get.back(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Obx(()=> Expanded(
                     child: LinearProgressBar(
                       maxSteps: 12,
                       progressType: LinearProgressBar.progressTypeLinear,
                       currentStep: controller.count.value,
                       minHeight: 4,
                       progressColor: AppColors.primaryColor,
                       backgroundColor: Colors.grey.withOpacity(0.3),
                       borderRadius: BorderRadius.circular(10),
                     ),
                   ),),
                    const SizedBox(width: 10,),
                    Text(AppTexts.skip, style: AppColors.createAccount,),
                    SizedBox(height: height* 0.1,),

                  ],
                ),
                SizedBox(height: height* 0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(()=> Text("${controller.count.value}", style: AppColors.createAccount,),),
                    Text(AppTexts.of15, style: AppColors.landingPageTextStyleDescription,),
                  ],
                ),
                SizedBox(height: height* 0.03,),
                Obx(()=>Text(AppTexts.assessmentTitleTexts[controller.count.value - 1], textAlign:TextAlign.center,style: AppColors.landingPageTextStyleTitle,),),
                SizedBox(height: height* 0.02,),
                Obx(()=> Text(controller.count.value == 12? AppTexts.whatIsEmergencyFund: AppTexts.giveAnswers, textAlign: TextAlign.center,style: AppColors.landingPageTextStyleDescription,),),                SizedBox(height: height* 0.06,),
                //update this
                Obx(()=> Expanded(
                   child: pages[controller.count.value - 1]
               ),),


                CustomButton(
                  buttonTextSize: 13,
                  width: width,
                  height: 60,
                  borderRadius: BorderRadius.circular(14),
                  textAlign: TextAlign.center,
                  gradient: AppColors.commonButtonGradient,
                  color: AppColors.white,
                  iconColor: AppColors.white,
                  icon: Icons.arrow_circle_right_rounded,
                  buttonText: "Next",
                  onTap: () => controller.increment(),
                ),

              ],
            ),
          ),
        ),
      )
    );
  }
}




