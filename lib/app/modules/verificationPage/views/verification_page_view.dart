import 'package:finance_app/app/modules/createNewPassword/views/create_new_password_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../common/app_background.dart';
import '../../../../common/app_buttons.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_images.dart';
import '../../../../common/app_textField.dart';
import '../../../../common/app_texts.dart';
import '../controllers/verification_page_controller.dart';

class VerificationPageView extends GetView<VerificationPageController> {
  const VerificationPageView({super.key});
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
                Text(AppTexts.verifyOTP, style: AppColors.authentication,),
                SizedBox(height: height* 0.01,),
                Text(AppTexts.toVerify, textAlign: TextAlign.center, style: AppColors.landingPageTextStyleDescription,),
                SizedBox(height: height* 0.05,),
                PinCodeTextField(
                  appContext: context,
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                  length: 6,
                  obscureText: false,
                  blinkWhenObscuring: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    fieldHeight: 45,
                    fieldWidth: 45,
                    activeFillColor: Theme.of(context).scaffoldBackgroundColor,
                    inactiveFillColor: Theme.of(context).scaffoldBackgroundColor,
                    inactiveColor: AppColors.black,
                    selectedFillColor: Theme.of(context).scaffoldBackgroundColor,
                    selectedColor: Theme.of(context).disabledColor,
                    selectedBorderWidth: 1,
                    inactiveBorderWidth: 1,
                    activeBorderWidth: 1,
                    activeColor: AppColors.black,
                  ),
                  cursorColor: Theme.of(context).dividerColor,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  enablePinAutofill: false,
                  autoDisposeControllers: false,
                  keyboardType: TextInputType.number,
                  boxShadows: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                  beforeTextPaste: (_) => false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                SizedBox(height: height* 0.03,),
                Text(AppTexts.timer, style: AppColors.createAccount,),
                SizedBox(height: height* 0.01,),
                Text(AppTexts.didNotGetCode, style: AppColors.landingPageTextStyleDescription,),
                SizedBox(height: height* 0.03,),
                Divider(
                  height: 10,
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(height: height* 0.01,),
                Text(AppTexts.resendCode, style: AppColors.landingPageTextStyle,),
                SizedBox(height: height* 0.01,),
                Divider(
                  height: 10,
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(height: height* 0.06,),
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
                  onTap: () => Get.to(()=>CreateNewPasswordView()),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
