import 'dart:async';

import 'package:finance_app/common/app_background.dart';
import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_images.dart';
import '../../../../common/app_texts.dart';
import '../../../routes/app_pages.dart';

class PasswordResetSuccess extends StatefulWidget {
  const PasswordResetSuccess({super.key});

  @override
  State<PasswordResetSuccess> createState() => _PasswordResetSuccessState();

}

class _PasswordResetSuccessState extends State<PasswordResetSuccess> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
          () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.AUTH,
                  (Route<dynamic> route) => false,
            );
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.resetSuccess, scale: 1.2,),
            SizedBox(height: 30),
            Center(child: Text(AppTexts.resetPassword, style: AppColors.authentication,)),
            SizedBox(height: 10),
            Text(AppTexts.resetPasswordDetail, style: AppColors.landingPageTextStyleDescription,),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
