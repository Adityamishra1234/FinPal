import 'package:finance_app/common/app_background.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_containers.dart';
import '../../../../common/app_texts.dart';
import '../controllers/confirm_transfer_controller.dart';

class ConfirmTransferView extends GetView<ConfirmTransferController> {
  const ConfirmTransferView({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomBackground(
        child: Column(
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
          ],
        ),
      )
    );
  }
}
