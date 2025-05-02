import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors{

  //colors
  static Color primaryColor = Color(0xffF06005);
  static Color pinkColor = Color(0xffFF77D7);
  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color transparent = Colors.transparent;
  static Color success = Color(0xff1EC756);


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


  //textStyles
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
      letterSpacing: 1,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
      fontSize: 25,
    )
  );
  static  TextStyle landingPageTextStyleDescription = GoogleFonts.poppins(
    textStyle:  TextStyle(
      letterSpacing: 1,
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



}