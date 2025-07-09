import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_buttons.dart';
import 'package:finance_app/common/app_textField.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_containers.dart';
import '../../../../common/app_images.dart';
import '../../../../common/app_texts.dart';
import '../controllers/link_new_bank_controller.dart';

class LinkNewBankView extends GetView<LinkNewBankController> {
   LinkNewBankView({super.key});
   var controller = Get.put(LinkNewBankController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomBackground(
        child: Stack(
          children: [
            ...linkIfNotLinked(height, width, controller),
            Positioned(
              bottom: 15,
              right: 15,
              left: 15,
              child: CustomButton(
                  buttonTextSize: 13,
                  width: width,
                  height: 45,
                  borderRadius: BorderRadius.circular(14),
                  textAlign: TextAlign.center,
                  gradient: AppColors.commonButtonGradient,
                  color: AppColors.white,
                  iconColor: AppColors.white,
                  icon: Icons.arrow_circle_right_rounded,
                  buttonText: "Continue",
                onTap: () {

                },
              ),)

          ],
        )
      )
    );
  }

  dynamic linkIfNotLinked(height, width, controller) {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height* 0.01,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customBackButton(),
                Text(AppTexts.linkUp, style: AppColors.hintTextStyle,),
                Icon(Icons.info_outline, size: 25,)
              ],
            ),
          ),
          SizedBox(height: height* 0.04,),
          Image.asset(AppImages.linkUp,scale: 4),
          SizedBox(height: height* 0.05,),
          Text(AppTexts.linkNewBank, style: AppColors.authentication,),
          SizedBox(height: height* 0.01,),
          Text(AppTexts.taglineLinkBank, textAlign:TextAlign.center,style: AppColors.landingPageTextStyleDescription,),
          SizedBox(height: height* 0.03,),
        ],
      ),
    ];
  }
  dynamic searchScreen(height, width, controller) {
    return [
      Column(
        children: [
          SizedBox(height: height* 0.01,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customBackButton(),
                Text(AppTexts.linkUp, style: AppColors.hintTextStyle,),
                Icon(Icons.info_outline, size: 25,)
              ],
            ),
          ),
          SizedBox(height: height* 0.05,),
          Text(AppTexts.linkBank, style: AppColors.textStyle,),
          SizedBox(height: height* 0.01,),
          Text(AppTexts.searchBank, textAlign:TextAlign.center,style: AppColors.landingPageTextStyleDescription,),
          SizedBox(height: height* 0.03,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 50,
              child: TextField(
                cursorColor: AppColors.primaryColor,
                style: AppColors.hintTextStyle,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: "Search bank or institution",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  hintStyle: AppColors.emailStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)),
                    borderSide: BorderSide(
                        color: AppColors.black
                            .withOpacity(0.09)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(
                          Radius.circular(
                              15.0)),
                      borderSide: BorderSide(
                          color: AppColors
                              .primaryColor
                              .withOpacity(0.6))),
                ),
              ),
            ),
          ),
          SizedBox(height: height* 0.01,),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.white,
                      boxShadow: [commonBoxShadow()]
                    ),
                    child: ListTile(
                      leading: CircleAvatar(radius: 18,
                          backgroundColor: AppColors.primaryColor.withOpacity(0.2),
                          child: Image.asset(AppImages.localBankImage)),
                      title: Text("Kotak Mahindra Bank", style: AppColors.montserratTextStyleSmall,),
                      trailing: Icon(Icons.link, color: AppColors.textColor.withOpacity(0.5),),
                    ),
                  );
                }),
          )
        ],
      ),
    ];
  }

  dynamic verifyScreen(height, width, controller) {
    return [];
  }
}
