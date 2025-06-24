import 'package:finance_app/app/modules/home/views/home_view.dart';
import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_buttons.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_texts.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../controllers/profile_setup_controller.dart';

class ProfileSetupView extends GetView<ProfileSetupController> {
   ProfileSetupView({super.key});
  var controller = Get.put(ProfileSetupController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: CustomBackground(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
        child: Obx(()=> Column(
          children: [
            SizedBox(
              height: height * 0.004,
            ),
            Center(child: Text(AppTexts.profileSetup, style: AppColors.createAccount,)),
           if(controller.showScreens == null) ...[
             SizedBox(
              height: height * 0.010,
            ),
            if(!controller.showLoaderForUploading.value)Center(child: Text(AppTexts.setupPic, style: AppColors.landingPageTextStyle,)),
            Spacer(),
            !controller.showLoaderForUploading.value ? Image.asset(
              AppImages.profileSetupUpload,
              scale: 4,
            ): Stack(children: [
                Center(
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      backgroundColor: Colors.grey.shade300,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:  Center(child: Image.asset(AppImages.profileSetupUploadCircular,height: 92,)),

                ),
              ],),
            if(controller.showLoaderForUploading.value)
              Column(children: [
                SizedBox(
                  height: height * 0.01,
                ),
              Text(AppTexts.uploadingPhoto, style: AppColors.landingPageTextStyle,),
              Text(AppTexts.uploadFileName, style: AppColors.landingPageTextStyleDescription,),
            ],),
            Spacer(),
            if(!controller.showLoaderForUploading.value)...[CustomButton(
                buttonTextSize: 13,
                width: width,
                height: 45,
                borderRadius: BorderRadius.circular(14),
                textAlign: TextAlign.center,
                gradient: AppColors.commonButtonGradient,
                color: AppColors.white,
                iconColor: AppColors.white,
                icon: Icons.camera_alt, buttonText: "Take Photo", onTap: () async{
              controller.showLoaderForUploading.value = !controller.showLoaderForUploading.value;
              await Future.delayed(Duration(seconds: 1));
              controller.makeScreenChange(false);
              print("here ${controller.showScreens}");
              controller.update();
            }
            ),
            SizedBox(
              height: height * 0.018,
            ),
            CustomButton(
                buttonTextSize: 13,
                width: width,
                height: 45,
                borderRadius: BorderRadius.circular(14),
                textAlign: TextAlign.center,
                gradient: AppColors.transparentGradient_emergencyFund,
                color: AppColors.black,
                iconColor: AppColors.black,
                icon: Icons.upload_outlined,
                buttonText: "Upload from gallery",
                onTap: () => null
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(child: InkWell(
              onTap: ()=> Get.to(()=> CustomBottomNavBar()),
                child: Text(AppTexts.skipStep, style: AppColors.needHelpStyle,))),]],
            if(controller.showScreens == false) ...[
              SizedBox(
                height: height * 0.010,
              ),
              SizedBox(
                height: height * 0.2,
              ),
              Image.asset(
                AppImages.failedToUpload,

              ),
              Text(AppTexts.failedToUpload, style: AppColors.landingPageTextStyle,),
              SizedBox(
                height: height * 0.004,
              ),
              Text(AppTexts.ensureFormat, style: AppColors.landingPageTextStyleDescription,),
              SizedBox(
                height: height * 0.040,
              ),
              CustomButton(
                  buttonTextSize: 13,
                  width: width,
                  height: 45,
                  borderRadius: BorderRadius.circular(14),
                  textAlign: TextAlign.center,
                  gradient: AppColors.commonButtonGradient,
                  color: AppColors.white,
                  iconColor: AppColors.white,
                  icon: Icons.upload_outlined,
                  buttonText: "Re-upload Photo",
                  onTap: () => null
              ),
              Spacer(),
            ]
          ],
        )),
      )),
    ));
  }
}
