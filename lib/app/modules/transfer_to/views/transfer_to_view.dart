import 'package:finance_app/app/modules/confirm_transfer/views/confirm_transfer_view.dart';
import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_buttons.dart';
import 'package:finance_app/common/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_containers.dart';
import '../../../../common/app_texts.dart';
import '../../../../widgets/app_widgets.dart';
import '../controllers/transfer_to_controller.dart';

class TransferToView extends GetView<TransferToController> {
   TransferToView({super.key});
  final controller = Get.put(TransferToController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Obx(()=> CustomBackground(
        child: !controller.addedBank.value ?
        selectBankWidget(height, width , context):  afterSelection(height, width , context)
      ))
    );
  }
  dynamic selectBankWidget(height , width, context){
    return Stack(
      children: [
        Column(
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
            SizedBox(height: height* 0.04,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppTexts.transferTo, style: AppColors.landingPageTextStyle,),
                    SizedBox(height: height* 0.01,),
                    InkWell(
                      onTap: (){
                        showModalBottomSheet(
                            backgroundColor: AppColors.white,
                            context: context,
                            showDragHandle: true,
                            builder: (context) {
                              return Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppTexts.transferTo,
                                        style: AppColors.landingPageTextStyle,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: TextField(
                                          cursorColor: AppColors.primaryColor,
                                          style: AppColors.hintTextStyle,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.zero,
                                            hintText: "Search banks or institution",
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
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Expanded(
                                        child: ListView.builder(
                                            padding: EdgeInsets.zero,
                                            itemCount: 20,
                                            itemBuilder: (BuildContext context, int index){
                                              return GestureDetector(
                                                onTap: (){
                                                  Get.back();
                                                  controller.addedBank.value = true;
                                                },
                                                child: ListTile(
                                                  contentPadding: EdgeInsets.zero,
                                                  leading: CircleAvatar(radius: 18,
                                                      backgroundColor: AppColors.primaryColor.withOpacity(0.2),
                                                      child: Image.asset(AppImages.localBankImage)),
                                                  title: Text("Kotak Mahindra Bank", style: AppColors.montserratTextStyleSmall,),
                                                ),
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.black.withOpacity(0.07))
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                          leading: Image.asset(AppImages.bankImage, scale: 4,),
                          title: Text("Bank or Institution", style: AppColors.emailStyle,),
                          trailing: Icon(Icons.arrow_drop_down),
                        ),
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
                                  child: Icon(Icons.person, size:18, color: AppColors.primaryColor,)),
                              title: Text("Aditya Mishra", style: AppColors.montserratTextStyleSmall,),
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
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
            child: CustomButton(
              width: width,
                gradient: AppColors.commonButtonGradient,
                iconColor: AppColors.white,
                color: AppColors.white,
                buttonTextSize: 13,
                borderRadius: BorderRadius.circular(14),
                height: 50, buttonText: "Continue",
                textAlign: TextAlign.center,
                onTap: (){
                  if(!controller.addedBank.value){
                    Get.showSnackbar(
                      GetSnackBar(
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                        margin: const EdgeInsets.all(12),
                        borderRadius: 12,
                        duration: const Duration(milliseconds: 1400),
                        messageText: CustomSnackBar.info(
                          message: "Please Select any Bank or Institution",
                        ),
                        titleText: const SizedBox.shrink(), // Hide default title
                      ),
                    );
                  }
                }
            ),
          ),
        ),
      ],
    );
  }
  dynamic afterSelection(height , width, context) {
    return Stack(
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
                  Text(AppTexts.transfer, style: AppColors.hintTextStyle,),
                  Icon(Icons.info_outline, size: 25,)
                ],
              ),
            ),
            SizedBox(height: height* 0.04,),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppTexts.transferFrom, style: AppColors.landingPageTextStyle,),
                      SizedBox(height: height* 0.01,),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [commonBoxShadow()]
                        ),
                        child: ListTile(
                          leading: Image.asset(AppImages.masterCard, scale: 4,),
                          title: Text(AppTexts.masterCard, style: AppColors.hintTextStyle,),
                          subtitle: Text(AppTexts.masterCardAmount, style: AppColors.landingPageTextStyleDescription,),
                          trailing: Text(AppTexts.change, style: AppColors.createAccount,),
                        ),
                      ),
                      SizedBox(height: height* 0.03,),
                      Text(AppTexts.transferTo, style: AppColors.landingPageTextStyle,),
              
                      SizedBox(height: height* 0.01,),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [commonBoxShadow()]
                        ),
                        child: ListTile(
                          leading: CircleAvatar(radius: 18,
                              backgroundColor: AppColors.primaryColor.withOpacity(0.2),
                              child: Icon(Icons.person, color: AppColors.primaryColor,)),
                          title: Text("Aditya", style: AppColors.hintTextStyle,),
                          subtitle: Text("${AppTexts.bankName} - 4781223344", style: AppColors.landingPageTextStyleDescription,),
                          trailing: Text(AppTexts.change, style: AppColors.createAccount,),
                        ),
                      ),
                      SizedBox(height: height* 0.03,),
                      Text(AppTexts.transferAmount, style: AppColors.landingPageTextStyle,),
                      SizedBox(height: height* 0.02,),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [commonBoxShadow()]
                        ),
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color:AppColors.black.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              textSelectionTheme:  TextSelectionThemeData(
                                selectionColor: AppColors.primaryColor.withOpacity(0.2),
                                selectionHandleColor: AppColors.primaryColor,
                                cursorColor: AppColors.primaryColor,
                              ),
                            ),
                            child: SpinBox(
                              textStyle: AppColors.textStyle,
                              min: 00,
                              max: 1000000,
                              value: 0,
                              step: 1,
                              showCursor: true,
                              cursorColor: AppColors.primaryColor,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              incrementIcon: Icon(Icons.add, color: AppColors.primaryColor,),
                              decrementIcon: Icon(Icons.remove, color: Colors.red,),
                              iconSize: 25,
              
              
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
            child: CustomButton(
                width: width,
                gradient: AppColors.commonButtonGradient,
                iconColor: AppColors.white,
                color: AppColors.white,
                buttonTextSize: 13,
                borderRadius: BorderRadius.circular(14),
                height: 50, buttonText: "Continue",
                textAlign: TextAlign.center,
                onTap: (){
                  Get.to(()=> ConfirmTransferView());
                }
            ),
          ),
        ),
      ],
    );
  }
}
