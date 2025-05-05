import 'package:finance_app/app/modules/auth/views/auth_view.dart';
import 'package:finance_app/common/app_images.dart';
import 'package:finance_app/common/app_texts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_buttons.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_containers.dart';
import '../../../routes/app_pages.dart';
import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  LandingPageView({super.key});

  @override
  final LandingPageController controller = Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final pages = [
      pageOneWidget(context, height, width),
    ];
    return Scaffold(
      body: Obx((){
        return Column(
          children: [
            if(controller.showOnboardingScreen.value == false)...[
              bodyWidget(context, height, width)
            ]
            else...[
              Expanded(
                child: PageView.builder(
                  itemCount: AppImages.onboardingImages.length,
                  onPageChanged: controller.onPageChanged,
                  controller: controller.pageController,
                  itemBuilder: (BuildContext context, int index) {
                    return Obx(() => pageOneWidget(context, height, width));

                  },),
              ),
              Obx((){
                final isLast = controller.currentPage.value == AppImages.onboardingImages.length - 1;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                    gradient: AppColors.commonButtonGradient,
                    buttonText:  isLast ? "Let's Get Started" : "Next",
                    buttonTextSize: 13,
                    icon: Icons.arrow_circle_right_rounded,
                    width: width,
                    height: 60,
                    borderRadius: BorderRadius.circular(14),
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                    iconColor: AppColors.white,
                    onTap: () {
                      controller.nextPage(AppImages.onboardingImages.length);
                      if(isLast){
                        Navigator.pushReplacementNamed(context, Routes.AUTH);
                      }
                    },
                  ),
                );
              }),
              SizedBox(height: height * 0.16,),
            ]
          ],
        );
      })
    );

  }

   bodyWidget(BuildContext context, dynamic height , width) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: height * 0.04,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: AppContainers(
                width: width,
                gradient: AppColors.commonContainerGradient,
                borderRadius: 14,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.appLogo),
                      SizedBox(height: height * 0.03,),
                      Text(AppTexts.appTagline, style: AppColors.textStyle, textAlign: TextAlign.center,)
                    ],
                  ),
                )),
          ),
          SizedBox(height: height * 0.04,),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle_rounded, color: AppColors.success,size: 16,),
                    const SizedBox(width: 8,),
                    Text(
                      AppTexts.landingPageTexts[index],
                      style: AppColors.landingPageTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            },),
          SizedBox(height: height * 0.12,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              gradient: AppColors.commonButtonGradient,
              buttonText:  "What's next?",
              buttonTextSize: 13,
              icon: Icons.arrow_circle_right_rounded,
              width: width,
              height: 60,
              borderRadius: BorderRadius.circular(14),
              textAlign: TextAlign.center,
              color: AppColors.white,
              iconColor: AppColors.white,
              onTap: () {
                controller.showOnboardingScreen.value = true;
              },
            ),
          )
        ],
      ),
    );
  }

   pageOneWidget(BuildContext context, dynamic height, width){
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.05,),
            //for images
            Image.asset(AppImages.onboardingImages[controller.currentPage.value]),
            SizedBox(height: height * 0.08,),
            //for texts
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.start,
                      AppTexts.landingPageTextsSecondPage[controller.currentPage.value],
                      style: AppColors.landingPageTextStyleTitle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.start,
                      AppTexts.landingPageTextsDetail[controller.currentPage.value],
                      style: AppColors.landingPageTextStyleDescription,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
   }

}
