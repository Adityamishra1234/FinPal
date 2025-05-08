import 'package:finance_app/app/modules/financialAssesment/controllers/financial_assessment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../common/app_colors.dart';
import '../../common/app_textField.dart';
import '../../common/app_texts.dart';

class AssessmentFragment1 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment1({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment1> createState() => _AssessmentFragment1State();
}

class _AssessmentFragment1State extends State<AssessmentFragment1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTextField(
          fillColor: AppColors.white,
          cursorColor: AppColors.primaryColor,
          borderRadius: 14,
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          hintText: AppTexts.enterYourName,
          hintTextStyle: AppColors.hintTextStyle,
          prefixIcon: Icon(Icons.person, color: AppColors.primaryColor,),
        ),
      ],
    );
  }
}

class AssessmentFragment2 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment2({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment2> createState() => _AssessmentFragment2State();
}

class _AssessmentFragment2State extends State<AssessmentFragment2> {
  dynamic current =  Get.find<FinancialAssessmentController>().current?.value;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppTexts.assessmentPurposes.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          splashColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
          onTap: (){
           setState(() {
             current = index;
           });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color:AppColors.white,
              boxShadow: current == index?[
                BoxShadow(
                  color: AppColors.black.withOpacity(0.04),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(1, 4)

                )
              ]:[],
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: current == index ? AppColors.primaryColor:AppColors.black.withOpacity(0.1), width:current == index ? 1.5:1 ),
            ),
            child: ListTile(
              leading:  Text(AppTexts.assessmentPurposes[index], style: current == index ? AppColors.selectedPurposeTextStyle: AppColors.purposeTextStyle,),
              trailing: Icon(Icons.check_circle_rounded,color: current == index ? AppColors.primaryColor:AppColors.black.withOpacity(0.3)),
            )
          ),
        );
      },);
  }
}


class AssessmentFragment3 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment3({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment3> createState() => _AssessmentFragment3State();
}

class _AssessmentFragment3State extends State<AssessmentFragment3> {
  var controller = Get.put(FinancialAssessmentController());

  final poppinsStyle = DefaultTextBlockStyle(
    AppColors.purposeTextStyle,
    HorizontalSpacing(2,2),
    VerticalSpacing(2,2),
    VerticalSpacing(2,2),
    null,
  );
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: widget.height/6,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color:AppColors.black.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: QuillEditor(

            controller: controller.quillController,
            focusNode: FocusNode(),
            scrollController: ScrollController(),
            configurations: QuillEditorConfigurations(
              customStyles: DefaultStyles(
                paragraph: poppinsStyle
              ),
              showCursor: true,
              paintCursorAboveText: true,
              textSelectionThemeData: TextSelectionThemeData(
                cursorColor: AppColors.primaryColor,
                selectionColor: AppColors.primaryColor.withOpacity(0.1),

              )
            ),
          ),
        ),
        Obx(()=>Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text("${controller.charCount.value}/500", style: AppColors.hintTextStyle),
        ))


      ],
    );
  }
}


class AssessmentFragment4 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment4({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment4> createState() => _AssessmentFragment4State();
}

class _AssessmentFragment4State extends State<AssessmentFragment4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppTexts.monthlyAmount, textAlign:TextAlign.center,style: AppColors.landingPageTextStyle,),
        SizedBox(height:  widget.height* 0.01,),
        Text(AppTexts.enterYouNetIncome, textAlign: TextAlign.center,style: AppColors.landingPageTextStyleDescription,),
        SizedBox(height:  widget.height* 0.06,),
        Container(
          alignment: Alignment.center,
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          decoration: BoxDecoration(
            border: Border.all(color:AppColors.black.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              textSelectionTheme:  TextSelectionThemeData(
                selectionColor: AppColors.primaryColor.withOpacity(0.2),
                selectionHandleColor: AppColors.primaryColor,
                cursorColor: AppColors.primaryColor,
              ),
            ),
            child: SpinBox(
              textStyle: AppColors.textStyle,
              min: 1000,
              max: 1000000,
              value: 1000,
              step: 1,
              showCursor: true,
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              incrementIcon: Icon(Icons.add, color: AppColors.primaryColor,),
              decrementIcon: Icon(Icons.remove, color: Colors.red,),
              iconSize: 25,

            
            ),
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Icon(Icons.remove),
          //     Row(
          //       children: [
          //         Icon(Icons.currency_rupee_outlined, color: AppColors.primaryColor,),
          //         Text("10,000", textAlign:TextAlign.center,style: AppColors.landingPageTextStyleTitle,),
          //       ],
          //     ),
          //     Icon(Icons.add)
          //   ],
          // ),
        ),


      ],
    );
  }
}
class AssessmentFragment5 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment5({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment5> createState() => _AssessmentFragment5State();
}

class _AssessmentFragment5State extends State<AssessmentFragment5> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SleekCircularSlider(
          initialValue: 0,
          min: 0,
          max: 101,
          appearance: CircularSliderAppearance(
              customWidths: CustomSliderWidths(
                progressBarWidth: 17,
                trackWidth: 25,
                handlerSize: 15,
              ),
              customColors: CustomSliderColors(
                hideShadow: true,
                dynamicGradient: true,
                progressBarColors: [ AppColors.pinkColor, AppColors.primaryColor],
                trackColor: AppColors.black.withOpacity(0.07),
                dotColor: AppColors.onDrag,
              ),
              infoProperties: InfoProperties(
                mainLabelStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                modifier: (double value) {
                  return "${value.toInt()}%";
                },
              ),
              size: 220,
              startAngle: 270,
              angleRange: 360
          ),
          onChange: (double value) {
            // print("Selected: ${value.toInt()}%");
          },
        ),
        SizedBox(height:  widget.height* 0.04,),
        Text(AppTexts.dragToAdjust, textAlign: TextAlign.center,style: AppColors.landingPageTextStyleDescription,),
        SizedBox(height:  widget.height* 0.02,),
        Text(AppTexts.iSave, textAlign: TextAlign.center,style: AppColors.hintTextStyle,),
      ],
    )
    ;
  }
}
class AssessmentFragment6 extends StatefulWidget {
  const AssessmentFragment6({super.key});

  @override
  State<AssessmentFragment6> createState() => _AssessmentFragment6State();
}

class _AssessmentFragment6State extends State<AssessmentFragment6> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment7 extends StatefulWidget {
  const AssessmentFragment7({super.key});

  @override
  State<AssessmentFragment7> createState() => _AssessmentFragment7State();
}

class _AssessmentFragment7State extends State<AssessmentFragment7> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment8 extends StatefulWidget {
  const AssessmentFragment8({super.key});

  @override
  State<AssessmentFragment8> createState() => _AssessmentFragment8State();
}

class _AssessmentFragment8State extends State<AssessmentFragment8> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment9 extends StatefulWidget {
  const AssessmentFragment9({super.key});

  @override
  State<AssessmentFragment9> createState() => _AssessmentFragment9State();
}

class _AssessmentFragment9State extends State<AssessmentFragment9> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment10 extends StatefulWidget {
  const AssessmentFragment10({super.key});

  @override
  State<AssessmentFragment10> createState() => _AssessmentFragment10State();
}

class _AssessmentFragment10State extends State<AssessmentFragment10> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment11 extends StatefulWidget {
  const AssessmentFragment11({super.key});

  @override
  State<AssessmentFragment11> createState() => _AssessmentFragment11State();
}

class _AssessmentFragment11State extends State<AssessmentFragment11> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment12 extends StatefulWidget {
  const AssessmentFragment12({super.key});

  @override
  State<AssessmentFragment12> createState() => _AssessmentFragment12State();
}

class _AssessmentFragment12State extends State<AssessmentFragment12> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment13 extends StatefulWidget {
  const AssessmentFragment13({super.key});

  @override
  State<AssessmentFragment13> createState() => _AssessmentFragment13State();
}

class _AssessmentFragment13State extends State<AssessmentFragment13> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment14 extends StatefulWidget {
  const AssessmentFragment14({super.key});

  @override
  State<AssessmentFragment14> createState() => _AssessmentFragment14State();
}

class _AssessmentFragment14State extends State<AssessmentFragment14> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class AssessmentFragment15 extends StatefulWidget {
  const AssessmentFragment15({super.key});

  @override
  State<AssessmentFragment15> createState() => _AssessmentFragment15State();
}

class _AssessmentFragment15State extends State<AssessmentFragment15> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
