import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors{

  //colors
  static const Color primaryColor = Color(0xffF06005);
  static Color textColor = Color(0xFF677082);
  static const Color pinkColor = Color(0xffFF77D7);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color red = Color(0xFFef413b);
  static const  Color transparent = Colors.transparent;
  static const Color success = Color(0xff1EC756);
  static const Color bgBottom = Color(0xff1EC756);
  static const Color bgTop = Color(0xffFFEDF9);
  static const Color errorLight = Color.fromARGB(255, 196, 32, 32);
  static const Color onErrorLight = Color.fromARGB(255, 245, 39, 39);
  static const Color onDrag = Color(0xffFA6C12);
  static const Color categoriesContainer = Color(0x809A9A9A);
  static const Color yellow = Color(0xffFDA700);



  //textFields
  static TextStyle montserratTextStyleSmall = GoogleFonts.montserrat(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  //money style
  static TextStyle moneyStyleHeading = GoogleFonts.dmSans(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static TextStyle moneyStyleSymbol = GoogleFonts.dmSans(
    color: AppColors.primaryColor,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  //gradients
  static LinearGradient commonButtonGradient = LinearGradient(
      colors: [
        primaryColor,
        pinkColor
      ],
    // begin: ,
    // end:
  );
  static LinearGradient commonContainerGradient = LinearGradient(
      colors: [
        primaryColor.withOpacity(0.2),
        pinkColor.withOpacity(0.2),
      ],
    // begin: ,
    // end:
  );
  static LinearGradient transparentGradient = LinearGradient(
      colors: [
        AppColors.white.withOpacity(0.75),
        AppColors.white.withOpacity(0.97)
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter
    //   begin: Alignment.topCenter,
    // end: Alignment.bottomCenter
  );
  static LinearGradient transparentGradient_emergencyFund = LinearGradient(
      colors: [
        AppColors.white.withOpacity(0.75),
        AppColors.white.withOpacity(0.97)
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.bottomRight
    //   begin: Alignment.topCenter,
    // end: Alignment.bottomCenter
  );
  static LinearGradient transfer = LinearGradient(
      colors: [
        AppColors.white.withOpacity(0.85),
        AppColors.white.withOpacity(0.97)
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.bottomRight
    //   begin: Alignment.topCenter,
    // end: Alignment.bottomCenter
  );
  static LinearGradient yellowColorButton = LinearGradient(
      colors: [
        AppColors.yellow,
        AppColors.yellow
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.bottomRight
    //   begin: Alignment.topCenter,
    // end: Alignment.bottomCenter
  );
  static  TextStyle textStyle = GoogleFonts.poppins(
    textStyle:  TextStyle(
      letterSpacing: 1,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 15,
    )
  );
  static  TextStyle landingPageTextStyleTitle = GoogleFonts.inter(
    textStyle:  TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w700,
      fontSize: 25,
    )
  );
  static  TextStyle landingPageTextStyleDescription = GoogleFonts.poppins(
    textStyle:  TextStyle(
      color: AppColors.black.withOpacity(0.5),
      fontWeight: FontWeight.w400,
      fontSize: 12,
    )
  );
  static  TextStyle landingPageTextStyle = GoogleFonts.jost(
    textStyle: TextStyle(

      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    )
  );
  static  TextStyle totalBalanceStyle = GoogleFonts.jost(
    textStyle: TextStyle(
      color: AppColors.textColor,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    )
  );
  static  TextStyle createAccount = GoogleFonts.jost(
    textStyle: TextStyle(

      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    )
  );
  //bank name
  static  TextStyle bankName = GoogleFonts.jost(
    textStyle: TextStyle(
      color: AppColors.red.withOpacity(0.9),
      fontWeight: FontWeight.w500,
      fontSize: 14,
    )
  );
  static  TextStyle needHelpStyle = GoogleFonts.jost(
    textStyle: TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: primaryColor,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    )
  );
  static  TextStyle markRead = GoogleFonts.jost(
    textStyle: TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: primaryColor,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    )
  );
  static  TextStyle authentication = GoogleFonts.poppins(
    textStyle: TextStyle(

      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 22,
    )
  );
  //placeHolder
  static  TextStyle hintTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: AppColors.black.withOpacity(0.9),
      fontWeight: FontWeight.w500,
      fontSize: 12
    )
  );
  static  TextStyle purposeTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w400,
      fontSize: 12
    )
  );
  static  TextStyle selectedPurposeTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 14
    )
  );

  //homepage text styles
  static  TextStyle nameStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
  );
  static  TextStyle emailStyle = GoogleFonts.jost(
      textStyle: TextStyle(
        color: AppColors.black.withOpacity(0.5),
        fontWeight: FontWeight.w400,
        fontSize: 12,
      )
  );


}