import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_buttons.dart';
import 'package:finance_app/common/app_images.dart';
import 'package:finance_app/common/app_textField.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_containers.dart';
import '../../../../common/app_texts.dart';
import '../controllers/transfer_to_controller.dart';

class TransferToView extends GetView<TransferToController> {
  const TransferToView({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 25),
        child: CustomButton(
          gradient: AppColors.commonButtonGradient,
          iconColor: AppColors.white,
          color: AppColors.white,
          buttonTextSize: 13,
          height: 50, buttonText: "Continue",
          textAlign: TextAlign.center,
        ),
      ),
      body: CustomBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height* 0.01,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customBackButton(),
                  Text(AppTexts.transfer, style: AppColors.hintTextStyle,),
                  Icon(Icons.info_outline, size: 25,)
                ],
              ),
            ),
            SizedBox(height: height* 0.07,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppTexts.transferTo, style: AppColors.landingPageTextStyle,),
                    SizedBox(height: height* 0.01,),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.black.withOpacity(0.07))
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                        leading: Image.asset(AppImages.bankImage, scale: 4,),
                        title: Text("Bank or Institutions", style: AppColors.emailStyle,),
                        trailing: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                    SizedBox(height: height* 0.05,),
                    Text(AppTexts.recentTransfer, style: AppColors.landingPageTextStyle,),
              
                    SizedBox(height: height* 0.01,),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        cursorColor: AppColors.primaryColor,
                        style: AppColors.hintTextStyle,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: "Search Recipient here",
                          prefixIcon: Icon(Icons.search, size: 20,),
                          hintStyle: AppColors.emailStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: AppColors.black.withOpacity(0.09)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: AppColors.primaryColor.withOpacity(0.6))
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height* 0.012,),
                    Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index){
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(radius: 18,
                                  backgroundColor: AppColors.primaryColor.withOpacity(0.2),
                                  child: Icon(Icons.near_me, size:18, color: AppColors.primaryColor,)),
                              title: Text("Aditya Mishra", style: AppColors.selectedPurposeTextStyle,),
                              subtitle: Text("${AppTexts.bankName}, ${AppTexts.bankAccountNumber}", style: AppColors.landingPageTextStyleDescription,),
                              trailing: Icon(Icons.arrow_forward_ios, size: 15,),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
