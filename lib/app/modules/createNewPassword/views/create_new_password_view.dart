import 'package:finance_app/app/modules/createNewPassword/views/reset_success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../../common/app_textField.dart';
import '../controllers/create_new_password_controller.dart';


import '../../../../common/app_background.dart';
import '../../../../common/app_buttons.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_images.dart';
import '../../../../common/app_texts.dart';

class CreateNewPasswordView extends GetView<CreateNewPasswordController> {
  const CreateNewPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height* 0.06,),
                Image.asset(AppImages.forgotPasswordLogo, scale: 1.2,),
                SizedBox(height: height* 0.03,),
                Text(AppTexts.createNewPassword, style: AppColors.authentication,),
                SizedBox(height: height* 0.01,),
                Text(AppTexts.createNewPasswordDetail, textAlign: TextAlign.center, style: AppColors.landingPageTextStyleDescription,),
                SizedBox(height: height* 0.1,),
                CustomTextField(

                  cursorColor: AppColors.primaryColor,
                  borderRadius: 14,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  hintText: AppTexts.newPassword,
                  hintTextStyle: AppColors.hintTextStyle,
                  prefixIcon: Icon(Icons.key, color: AppColors.primaryColor,),
                ),
                SizedBox(height: height* 0.03,),
                CustomTextField(

                  cursorColor: AppColors.primaryColor,
                  borderRadius: 14,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  hintText: AppTexts.confirmPassword,
                  hintTextStyle: AppColors.hintTextStyle,
                  prefixIcon: Icon(Icons.key, color: AppColors.primaryColor,),
                ),
                SizedBox(height: height* 0.08,),
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
                  buttonText: "Continue",
                  onTap: () => Get.to(()=>PasswordResetSuccess()),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
