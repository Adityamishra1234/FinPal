import 'package:finance_app/app/modules/financialAssesment/controllers/financial_assessment_controller.dart';
import 'package:finance_app/common/app_images.dart';
import 'package:finance_app/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../common/app_buttons.dart';
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
  final height, width, context;
  const AssessmentFragment6({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment6> createState() => _AssessmentFragment6State();
}

class _AssessmentFragment6State extends State<AssessmentFragment6> {
  var controller = Get.put(FinancialAssessmentController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       Align(
         alignment: Alignment.topLeft,
         child: Wrap(
           direction: Axis.horizontal,
             spacing: 14.0,
             runSpacing: 14.0,
             crossAxisAlignment: WrapCrossAlignment.start,
             runAlignment: WrapAlignment.start,
             children: [
               for (int i = 0; i < AppTexts.categoryTextList.length; i++)
                 ...categoryContainer(i, controller, widget.width)
             ]),
       ),
      ]);
  }
}
//for creating categories container
List <Widget> categoryContainer(index, FinancialAssessmentController controller, width) {
  return [
    Obx(()=>InkWell(
      onTap:(){
        controller.currentIndexForCategories?.value = index;
        if( controller.currentIndexForCategoriesList.contains(index)){
          //remove
          controller.currentIndexForCategoriesList.remove(index);
        }
        else{
          //add
          controller.currentIndexForCategoriesList.add(index);
        }

      },
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: width * 0.04, vertical: 12),
        decoration: BoxDecoration(
            color:  controller.currentIndexForCategoriesList.contains(index) ? AppColors.success:AppColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color:  controller.currentIndexForCategoriesList.contains(index)? AppColors.transparent:AppColors.categoriesContainer)
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppImages.categoryImageList[index], scale: 4,color:  controller.currentIndexForCategoriesList.contains(index)?AppColors.white:AppColors.black),
            const SizedBox(width: 10,),
            Text(AppTexts.categoryTextList[index], textAlign: TextAlign.center,style: TextStyle(
                color:  controller.currentIndexForCategoriesList.contains(index) ? AppColors.white: AppColors.black.withOpacity(0.9),
                fontWeight: FontWeight.w500,
                fontSize: 11
            ))
          ],
        ),
      ),
    ))
  ];
}


class AssessmentFragment7 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment7({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment7> createState() => _AssessmentFragment7State();
}

class _AssessmentFragment7State extends State<AssessmentFragment7> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            ),
        ),
        SizedBox(height:  widget.height* 0.03,),
        Text(AppTexts.howMuchDebt, textAlign: TextAlign.center,style: AppColors.landingPageTextStyle,),
        Spacer(),
        CustomButton(
          buttonTextSize: 12,
          width: widget.width,
          height: 52,
          borderRadius: BorderRadius.circular(14),
          textAlign: TextAlign.center,
          gradient:  AppColors.transparentGradient,
          color: AppColors.black,
          buttonText: "I don't have any debt",
          onTap: () => Get.find<FinancialAssessmentController>().increment(),
        ),
        SizedBox(height:  widget.height* 0.02,),
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


      ],
    );
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
    return ListView.builder(
      itemCount: AppTexts.goalInMindList.length,
      itemBuilder: (BuildContext context, int index) {
        // return Obx(() => InkWell(
        //   splashColor: AppColors.transparent,
        //   highlightColor: AppColors.transparent,
        //   onTap: (){
        //     if(Get.find<FinancialAssessmentController>().goals.contains(index)){
        //       //remove
        //       Get.find<FinancialAssessmentController>().goals.remove(index);
        //     }
        //     else{
        //       // add
        //       Get.find<FinancialAssessmentController>().goals.add(index);
        //     }
        //   },
        //   child: Container(
        //       margin: const EdgeInsets.symmetric(vertical: 10),
        //       decoration: BoxDecoration(
        //         color:AppColors.white,
        //         boxShadow:  Get.find<FinancialAssessmentController>().goals.contains(index)?[
        //           BoxShadow(
        //               color: AppColors.black.withOpacity(0.04),
        //               spreadRadius: 2,
        //               blurRadius: 4,
        //               offset: Offset(1, 4)
        //
        //           )
        //         ]:[],
        //         borderRadius: BorderRadius.circular(18),
        //         border: Border.all(color: Get.find<FinancialAssessmentController>().goals.contains(index) ? AppColors.primaryColor:AppColors.black.withOpacity(0.1), width: Get.find<FinancialAssessmentController>().goals.contains(index)? 1.5:1 ),
        //       ),
        //       child: ListTile(
        //         leading:  Text(AppTexts.goalInMindList[index], style: Get.find<FinancialAssessmentController>().goals.contains(index)? AppColors.selectedPurposeTextStyle: AppColors.purposeTextStyle,),
        //         trailing: Icon(Icons.check_circle_rounded,color:  Get.find<FinancialAssessmentController>().goals.contains(index)? AppColors.primaryColor:AppColors.black.withOpacity(0.3)),
        //       )
        //   ),
        // ));
        return Obx(() {
          final controller = Get.find<FinancialAssessmentController>();
          final isSelected = controller.goals.contains(index);

          return InkWell(
            splashColor: AppColors.transparent,
            highlightColor: AppColors.transparent,
            onTap: () {
              if (isSelected) {
                controller.goals.remove(index);
              } else {
                controller.goals.add(index);
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: isSelected
                  ? BoxDecoration(
                gradient: AppColors.commonButtonGradient,
                borderRadius: BorderRadius.circular(20),
              )
                  : null,
              padding: isSelected ? EdgeInsets.all(1.5) : EdgeInsets.zero, // border thickness
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: isSelected
                      ? [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.04),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(1, 4),
                    )
                  ]
                      : [],
                  borderRadius: BorderRadius.circular(18),
                  border: isSelected
                      ? null
                      : Border.all(
                    color: AppColors.black.withOpacity(0.1),
                    width: 1,
                  ),
                ),
                child: ListTile(
                  leading: Text(
                    AppTexts.goalInMindList[index],
                    style: isSelected
                        ? AppColors.selectedPurposeTextStyle
                        : AppColors.purposeTextStyle,
                  ),
                  trailing: Icon(
                    Icons.check_circle_rounded,
                    color: isSelected
                        ? AppColors.primaryColor
                        : AppColors.black.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          );
        });

      },);
  }
}
class AssessmentFragment9 extends StatefulWidget {
  const AssessmentFragment9({super.key});

  @override
  State<AssessmentFragment9> createState() => _AssessmentFragment9State();
}

class _AssessmentFragment9State extends State<AssessmentFragment9> {
  final controller = Get.find<FinancialAssessmentController>();
  @override
  Widget build(BuildContext context) {
   return GridView.builder(
     padding: const EdgeInsets.all(16),
     shrinkWrap: true,
     physics: NeverScrollableScrollPhysics(),
     itemCount: AppTexts.currentTrackList.length,
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       crossAxisSpacing: 16,
       mainAxisSpacing: 16,
       childAspectRatio: 1,
     ),
     itemBuilder: (context, index) {
       return Obx(() {
         final isSelected = controller.track?.value;
         return InkWell(
           splashColor: AppColors.transparent,
           highlightColor: AppColors.transparent,
           onTap: () {
               controller.track?.value = index;
           },
           child: Container(
             margin: const EdgeInsets.symmetric(vertical: 10),
             decoration: isSelected == index
                 ? BoxDecoration(
               gradient: AppColors.commonButtonGradient,
               borderRadius: BorderRadius.circular(15),
             )
                 : null,
             padding:  isSelected == index ? EdgeInsets.all(1.5) : EdgeInsets.zero,
             child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
               decoration: BoxDecoration(
                 color: AppColors.white,
                 borderRadius: BorderRadius.circular(13),
                   border:  !(isSelected == index)? Border.all(color: AppColors.black.withOpacity(0.08)): null,
                   boxShadow: isSelected == index ? [BoxShadow(
                     spreadRadius: 2,
                     blurRadius: 4,
                     color: AppColors.primaryColor.withOpacity(0.3),
                     offset: Offset(0, 1)
                   )]: null,
               ),
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image.asset(
                     AppImages.currentTrackImageList[index],
                     color: isSelected == index? AppColors.primaryColor:AppColors.black,
                     scale: 4,
                   ),
                   Text(
                     AppTexts.currentTrackList[index],
                     style: AppColors.hintTextStyle,
                   ),
                 ],
               ),
             ),
           ),
         );
       }
       );
     },
   );

  }
}
class AssessmentFragment10 extends StatefulWidget {
  final dynamic minAge, maxAge;
  const AssessmentFragment10({super.key, this.minAge = 18, this.maxAge = 100});

  @override
  State<AssessmentFragment10> createState() => _AssessmentFragment10State();
}

// class _AssessmentFragment10State extends State<AssessmentFragment10> {
//   dynamic selectedAge = 18;
//   final ScrollController _scrollController = ScrollController();
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToAge(selectedAge));
//   }
//   void _scrollToAge(int age) {
//     final index = age - widget.minAge;
//     final double itemWidth = 60;
//     final offset = index * itemWidth - (MediaQuery.of(context).size.width / 2) + itemWidth / 2;
//     final maxExtent = _scrollController.position.maxScrollExtent;
//     _scrollController.animateTo(
//       offset.clamp(0, maxExtent).toDouble(),
//       curve: Curves.easeInOut, duration: const Duration(milliseconds: 300),
//     );
//   }
//   void _changeAge(int direction) {
//     setState(() {
//       selectedAge = (selectedAge + direction).clamp(widget.minAge, widget.maxAge);
//     });
//     _scrollToAge(selectedAge);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           "${AppTexts.selectedAge}: $selectedAge",
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 20),
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               icon:  Icon(Icons.arrow_back_ios, color: AppColors.black.withOpacity(0.8),),
//               onPressed: () => _changeAge(-1),
//             ),
//
//             // Age List
//             Expanded(
//               child: SizedBox(
//                 height: 60,
//                 child: ListView.builder(
//                   controller: _scrollController,
//                   scrollDirection: Axis.horizontal,
//                   itemCount: widget.maxAge - widget.minAge + 1,
//                   itemBuilder: (context, index) {
//                     int age = widget.minAge + index;
//                     bool isSelected = age == selectedAge;
//
//                     return GestureDetector(
//                       onTap: () {
//                         setState(() => selectedAge = age);
//                         // _scrollToAge(age);
//                       },
//                       child: Container(
//                         width:60,
//                         alignment: Alignment.center,
//                         margin: const EdgeInsets.symmetric(horizontal: 4),
//                         decoration: BoxDecoration(
//                           color: isSelected ? AppColors.primaryColor.withOpacity(0.8) : Colors.grey[200],
//                           borderRadius: BorderRadius.circular(18),
//                         ),
//                         child: Text(
//                           "$age",
//                           style: TextStyle(
//                             color: isSelected ? AppColors.white : AppColors.black,
//                             fontSize: isSelected ? 16 : 12,
//                             fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//
//             IconButton(
//               icon:  Icon(Icons.arrow_forward_ios,color: AppColors.black.withOpacity(0.8)),
//               onPressed: () => _changeAge(1),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
class _AssessmentFragment10State extends State<AssessmentFragment10> {
  dynamic selectedAge = 18;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToAge(selectedAge));
  }

  void _scrollToAge(int age) {
    final index = age - widget.minAge;
    const double itemWidth = 50;
    final offset = index * itemWidth - (MediaQuery.of(context).size.width / 2) + itemWidth / 2;
    final maxExtent = _scrollController.position.maxScrollExtent;

    _scrollController.animateTo(
      offset.clamp(0, maxExtent).toDouble(),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _changeAge(int direction) {
    setState(() {
      selectedAge = (selectedAge + direction).clamp(widget.minAge, widget.maxAge);
    });
    _scrollToAge(selectedAge);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${AppTexts.selectedAge} $selectedAge",
          style: const TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: AppColors.black.withOpacity(0.8)),
              onPressed: () => _changeAge(-1),
            ),

            Expanded(
              child: SizedBox(
                height: 50,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.transparent,
                        Colors.black,
                        Colors.black,
                        Colors.transparent,
                      ],
                      stops: [0.0, 0.1, 0.9, 1.0],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.dstIn,
                  child: ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.maxAge - widget.minAge + 1,
                    itemBuilder: (context, index) {
                      int age = widget.minAge + index;
                      bool isSelected = age == selectedAge;

                      return GestureDetector(
                        onTap: () {
                          setState(() => selectedAge = age);
                          _scrollToAge(age);
                        },
                        child: Container(
                          width: 50,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primaryColor.withOpacity(0.8)
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            "$age",
                            style: TextStyle(
                              color: isSelected ? AppColors.white : AppColors.black,
                              fontSize: isSelected ? 16 : 12,
                              fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

            IconButton(
              icon: Icon(Icons.arrow_forward, color: AppColors.black.withOpacity(0.8)),
              onPressed: () => _changeAge(1),
            ),
          ],
        ),
      ],
    );
  }
}
class AssessmentFragment11 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment11({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment11> createState() => _AssessmentFragment11State();
}

class _AssessmentFragment11State extends State<AssessmentFragment11> {
  dynamic current  = Get.find<FinancialAssessmentController>().feelingSituation?.value;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppTexts.situationFeelingList.length,
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
                leading: Image.asset(AppImages.situationFeelingImageList[index], scale: 4,),
                title:  Text(AppTexts.situationFeelingList[index], style: current == index ? AppColors.selectedPurposeTextStyle: AppColors.purposeTextStyle,),
                trailing: Icon(Icons.check_circle_rounded,color: current == index ? AppColors.primaryColor:AppColors.black.withOpacity(0.3)),
              )
          ),
        );
      },);
  }
}
class AssessmentFragment12 extends StatefulWidget {
  final height, width, context;
  const AssessmentFragment12({super.key, this.height, this.width, this.context});

  @override
  State<AssessmentFragment12> createState() => _AssessmentFragment12State();
}

class _AssessmentFragment12State extends State<AssessmentFragment12> {
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisSize: MainAxisSize.min,
      children: [
        // Text(AppTexts.whatIsEmergencyFund, textAlign:TextAlign.center,style: AppColors.hintTextStyle,),
        Spacer(),
        Image.asset(AppImages.haveFunds, scale:3.6, filterQuality: FilterQuality.high),
        Spacer(),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 50),
          child: CustomButton(
            buttonTextSize: 12,
            width: widget.width,
            height:40,
            borderRadius: BorderRadius.circular(14),
            textAlign: TextAlign.center,
            gradient:  AppColors.transparentGradient_emergencyFund,
            color: AppColors.black,
            buttonText: "No, I don't",
            onTap: () => Get.find<FinancialAssessmentController>().increment(),
          ),
        ),
        SizedBox(height:  widget.height* 0.02,),
      ],
    );
  }
}
