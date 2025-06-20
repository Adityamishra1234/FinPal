import 'package:finance_app/common/app_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_images.dart';
import '../../../../common/app_textField.dart';
import '../../verificationPage/views/verification_page_view.dart';
import '../controllers/registration_page_controller.dart';
import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_buttons.dart';
import 'package:finance_app/common/app_colors.dart';
import 'package:finance_app/common/app_texts.dart';
import 'package:flutter/services.dart';

class RegistrationPageView extends GetView<RegistrationPageController> {
  const RegistrationPageView({super.key});
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height* 0.06,),
                Image.asset(AppImages.appLogo, scale: 1.2,),
                SizedBox(height: height* 0.03,),
                Text(AppTexts.registerAccount, style: AppColors.authentication,),
                Text(AppTexts.registerAccountDetail, style: AppColors.landingPageTextStyleDescription,),
                SizedBox(height: height* 0.08,),
                CustomTextField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],

                  cursorColor: AppColors.primaryColor,
                  borderRadius: 14,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  hintText: AppTexts.enterPhone,
                  hintTextStyle: AppColors.hintTextStyle,
                  prefixIcon: Icon(Icons.phone, color: AppColors.primaryColor,),
                ),
                SizedBox(height: height* 0.03,),
                CustomTextField(

                  cursorColor: AppColors.primaryColor,
                  borderRadius: 14,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  hintText: AppTexts.enterPassword,
                  hintTextStyle: AppColors.hintTextStyle,
                  obscureText: true,
                  // suffix: Icon(Icons.remove_red_eye, color: AppColors.black.withOpacity(0.7),size: 18,),
                  prefixIcon: Icon(Icons.key, color: AppColors.primaryColor,),
                ),
                SizedBox(height: height* 0.03,),
                CustomTextField(

                  cursorColor: AppColors.primaryColor,
                  borderRadius: 14,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  hintText: AppTexts.confirmPassword,
                  hintTextStyle: AppColors.hintTextStyle,
                  obscureText: true,
                  // suffix: Icon(Icons.remove_red_eye, color: AppColors.black.withOpacity(0.7),size: 18,),
                  prefixIcon: Icon(Icons.key, color: AppColors.primaryColor,),
                ),
                SizedBox(height: height* 0.04,),
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
                    buttonText: "Create Account",
                  onTap: () {
                      Get.to(()=> VerificationPageView());
                  },
                ),
                SizedBox(height: height* 0.02,),
                Center(child: Text(AppTexts.orRegisterWith, style: AppColors.landingPageTextStyleDescription,)),
                SizedBox(height: height* 0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.black.withOpacity(0.2)),

                      ),
                      child: Image.asset(AppImages.google),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.black.withOpacity(0.2)),

                      ),
                      child: Image.asset(AppImages.apple),
                    ),
                  ],
                ),
                SizedBox(height: height* 0.06,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppTexts.alreadyHaveAccount, style: AppColors.landingPageTextStyle,),
                    InkWell(
                        splashColor: AppColors.transparent,
                        highlightColor: AppColors.transparent,
                        onTap: () {
                          Get.back();
                        },
                        child: Text(AppTexts.loginAccount, style: AppColors.createAccount,)),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
