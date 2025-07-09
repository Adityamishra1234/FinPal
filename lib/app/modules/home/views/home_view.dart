import 'package:finance_app/app/modules/notification_screen/views/notification_screen_view.dart';
import 'package:finance_app/common/app_background.dart';
import 'package:finance_app/common/app_buttons.dart';
import 'package:finance_app/common/app_colors.dart';
import 'package:finance_app/common/app_containers.dart';
import 'package:finance_app/common/app_texts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/app_images.dart';
import '../../../../widgets/no_data_widget.dart';
import '../../link_new_bank/views/link_new_bank_view.dart';
import '../../transfer_to/views/transfer_to_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:CustomBackground(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(AppImages.profileSetupUploadCircular, height: 40,),
              title: Text(AppTexts.name, style: AppColors.nameStyle),
              subtitle: Text(AppTexts.email, style: AppColors.emailStyle),
              trailing: Badge(
                backgroundColor: AppColors.red,
                label: Text(
                  '3',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: ()=> Get.to(()=> NotificationScreenView()),
                  child: Image.asset(
                    AppImages.notificationImage,
                    height: 40,
                  ),
                ),
              ),


            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: AppColors.white,
                        boxShadow: [
                         commonBoxShadow(),
                        ]
                      ),
                      child: Column(
                        children: [
                          Text(AppTexts.totalFreeBal, style: AppColors.totalBalanceStyle),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text.rich(TextSpan(
                                text: AppTexts.rupee,
                                style: AppColors.moneyStyleSymbol
                              ),),
                              const SizedBox(width: 4,),
                              Text("10,000", style: AppColors.moneyStyleHeading,),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 8),
                              leading: Image.asset(AppImages.localBankImage, scale: 4,),
                              title: Text(AppTexts.bankName, style: AppColors.bankName,),
                              subtitle: Text(AppTexts.bankAccountNumber, style: AppColors.hintTextStyle,),
                              trailing: Icon(Icons.remove_red_eye, size: 22, color: AppColors.black,),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child:  ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 8),
                              leading: Image.asset(AppImages.localBankImage, scale: 4,),
                              title: Text(AppTexts.secondBankName, style: AppColors.bankName,),
                              subtitle: Text(AppTexts.bankAccountNumber, style: AppColors.hintTextStyle,),
                              trailing: Icon(Icons.remove_red_eye, size: 22,color: AppColors.black
                                ,),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomButton(
                                  buttonTextSize: 13,
                                  height: 45,
                                  borderRadius: BorderRadius.circular(14),
                                  textAlign: TextAlign.center,
                                  gradient: AppColors.commonButtonGradient,
                                  color: AppColors.white,
                                  iconColor: AppColors.white,
                                  icon: Icons.add, buttonText: 'Link New Bank',
                                  onTap: ()=> Get.to(()=> LinkNewBankView()),
              
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: CustomButton(
                                  buttonTextSize: 13,
                                  height: 45,
                                  borderRadius: BorderRadius.circular(14),
                                  textAlign: TextAlign.center,
                                  gradient: AppColors.transfer,
                                  color: AppColors.black,
                                  iconColor: AppColors.black,
                                  icon: Icons.file_upload_outlined, buttonText: 'Transfer',
                                  onTap: ()=> Get.to(()=> TransferToView()),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(AppTexts.lastUpdated, style: AppColors.emailStyle),
                              const SizedBox(width: 8),
                              Text(AppTexts.syncNow, style: AppColors.needHelpStyle),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  //goals
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(AppTexts.goals, style: AppColors.hintTextStyle,),
                            const SizedBox(width: 8,),
                            Icon(Icons.info_outline, color: Colors.grey,size: 18,)
                          ],
                        ),
                        Text("See all", style: AppColors.needHelpStyle,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: AppColors.white,
                        boxShadow: [
                         commonBoxShadow(),
                        ]
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            AppImages.noGoalImage,
                            scale: 8,
                          ),
                          Text(AppTexts.readySaving, style: AppColors.landingPageTextStyle,),
                          SizedBox(
                            height: height * 0.004,
                          ),
                          Text(AppTexts.notSetGoal, style: AppColors.landingPageTextStyleDescription,),
                          SizedBox(
                            height: height * 0.040,
                          ),
                          CustomButton(
                              buttonTextSize: 13,
                              width: width,
                              height: 45,
                              borderRadius: BorderRadius.circular(14),
                              textAlign: TextAlign.center,

                              color: AppColors.white,
                              iconColor: AppColors.white,
                              icon: Icons.add,
                              buttonText: "Create Your First Goal",
                              onTap: () => null
                          ),
                        ],
                      ),

                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  //general analytics
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(AppTexts.generalAnalytics, style: AppColors.hintTextStyle,),
                            const SizedBox(width: 8,),
                            Icon(Icons.info_outline, color: Colors.grey,size: 18,)
                          ],
                        ),
                        Text("See all", style: AppColors.needHelpStyle,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: AppColors.white,
                          boxShadow: [
                            commonBoxShadow(),
                          ]
                      ),
                      child: CustomNoDataWidget(text: '',)

                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  //last transactions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(AppTexts.lastTransactions, style: AppColors.hintTextStyle,),
                            const SizedBox(width: 8,),
                            Icon(Icons.info_outline, color: Colors.grey,size: 18,)
                          ],
                        ),
                        Text("See all", style: AppColors.needHelpStyle,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: AppColors.white,
                            boxShadow: [
                              commonBoxShadow(),
                            ]
                        ),
                        child: CustomNoDataWidget(text: '',)

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
