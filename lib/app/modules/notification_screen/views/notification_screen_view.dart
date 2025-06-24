import 'package:finance_app/common/app_background.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_containers.dart';
import '../../../../common/app_texts.dart';
import '../controllers/notification_screen_controller.dart';

class NotificationScreenView extends GetView<NotificationScreenController> {
  const NotificationScreenView({super.key});
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
                  Text(AppTexts.notificationTitle, style: AppColors.hintTextStyle,),
                  Text(AppTexts.markAllRead, style: AppColors.markRead,),
              ],
              ),
            ),
            SizedBox(height: height* 0.01,),
            Expanded(
              child: ListView.builder(itemBuilder: (BuildContext context, int index){
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  alignment: Alignment.center,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(1, 1),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications,
                              color: AppColors.primaryColor,
                            ),
                          ],
                        ),
                        title: Text(
                          "Transfer Out",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: AppColors.black)),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You just made a transfer of ${AppTexts.rupee}45.00 to Trevor Philips on November 18, 2024 at 09:31 AM. "
                                  "If you did not do this, please call 11223344 immediately.",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: AppColors.black)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Today, 09:31AM",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      color: AppColors.black)),
                            )
                          ],
                        ),
                        trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: AppColors.primaryColor
                        ),
              
              
                      ),
                    ],
                  ),
                );
              }),
            )
            //notificationTitle
          ],
        ),
      )
    );
  }
}
