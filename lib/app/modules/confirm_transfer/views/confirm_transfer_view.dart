import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_containers.dart';
import '../../../../common/app_texts.dart';
import '../../../../widgets/app_widgets.dart';
import '../controllers/confirm_transfer_controller.dart';

class ConfirmTransferView extends GetView<ConfirmTransferController> {
   ConfirmTransferView({super.key});
   var controller = Get.put(ConfirmTransferController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomBackground(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: height* 0.01,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customBackButton(),
                      Text(AppTexts.confirmTransfer, style: AppColors.hintTextStyle,),
                      Icon(Icons.info_outline, size: 25,)
                    ],
                  ),
                ),
                SizedBox(height: height* 0.04,),
                Column(
                  children: [
                    Image.asset(AppImages.accountPin, scale: 4,),
                    SizedBox(height: height* 0.03,),
                    Text(AppTexts.enterYouAccountPin, style: AppColors.authentication,),
                    SizedBox(height: height* 0.01,),
                    Text(AppTexts.securityReasons, textAlign:TextAlign.center,style: AppColors.landingPageTextStyleDescription,),
                    SizedBox(height: height* 0.03,),
                    buildPinPut(),

                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              child: CustomNumberKeyboard(
                onKeyTap: (value) {
                  if (controller.pinController.text.length < 6) {
                    controller.pinController.text += value;
                   print("${controller.pinController.text}");
                  }
                },
                onBackspace: () {
                  if (controller.pinController.text.isNotEmpty) {
                    controller.pinController.text =
                        controller.pinController.text.substring(0, controller.pinController.text.length - 1);
                  }
                },
                onFingerprintTap: () {
                  print("Fingerprint tapped");
                },
              ),
            )
          ],
        ),
      )
    );
  }
}
