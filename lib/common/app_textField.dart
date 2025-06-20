import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
//
//
// class CustomTextField extends StatelessWidget {
//   final TextEditingController? controller;
//   final Function(String)? onChange;
//   final VoidCallback? onTap;
//   final Function(String)? onSubmitted;
//   final String? hintText;
//   final int? maxLine;
//   final TextInputType? keyboardType;
//   final List<TextInputFormatter>? inputFormatters;
//   final FloatingLabelBehavior? labelBehavior;
//   final InputBorder? focusedBorder;
//   final InputBorder? enabledBorder;
//   final InputBorder? disabledBorder;
//   final String? labelText;
//   final EdgeInsets? contentPadding;
//   final bool? filled;
//   final TextStyle? labelStyle;
//   final Widget? prefixIcon;
//   final Color? fillColor;
//   final bool? readOnly;
//   final Widget? suffixIcon;
//   final TextStyle? hintTextStyle;
//   final Widget? suffix;
//   final int? maxLength;
//   final TextStyle? style;
//   final TextStyle? errorStyle;
//   final TextInputAction? textInputAction;
//   final Color? cursorColor;
//   final BoxConstraints? suffixConstraints;
//   final BoxConstraints? prefixConstraints;
//   final bool? dense;
//   final bool obscureText;
//   final FocusNode? focusNode;
//   final String? Function(String? string)? validator;
//   final TextAlign textAlign;
//   final bool? enabled;
//   final double borderRadius;
//   final bool? autofocus;
//   final dynamic backgroundColor, borderColor;
//   const CustomTextField(
//       {super.key,
//         this.cursorColor,
//         this.backgroundColor,
//         this.borderColor,
//         this.controller,
//         this.readOnly = false,
//         this.obscureText = false,
//         this.onChange,
//         this.onTap,
//         this.hintText,
//         this.maxLine = 1,
//         this.keyboardType = TextInputType.text,
//         this.inputFormatters = const [],
//         this.focusedBorder,
//         this.enabledBorder,
//         this.disabledBorder,
//         this.contentPadding,
//         this.labelBehavior,
//         this.labelText,
//         this.filled = false,
//         this.fillColor,
//         this.labelStyle,
//         this.prefixIcon,
//         this.suffixIcon,
//         this.hintTextStyle,
//         this.suffix,
//         this.maxLength,
//         this.style,
//         this.textInputAction,
//         this.onSubmitted,
//         this.suffixConstraints,
//         this.dense,
//         this.prefixConstraints,
//         this.validator,
//         this.errorStyle,
//         this.focusNode,
//         this.textAlign = TextAlign.start,
//         this.enabled,
//         this.borderRadius = 5,
//         this.autofocus = false});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       enabled: enabled,
//       autovalidateMode: AutovalidateMode.onUserInteraction,
//       obscureText: obscureText,
//       // obscuringCharacter: '*',
//       cursorColor: cursorColor,
//       readOnly: readOnly!,
//       focusNode: focusNode,
//       onChanged: onChange,
//       onTap: onTap,
//       validator: validator,
//       onFieldSubmitted: onSubmitted,
//       textAlign: textAlign,
//       style: style ??
//           Theme.of(context).textTheme.bodyLarge!.copyWith(
//             fontSize: 14,
//             fontWeight: FontWeight.w400,
//             overflow: TextOverflow.ellipsis,
//           ),
//       maxLength: maxLength,
//       autofocus: autofocus!,
//       decoration: InputDecoration(
//         isDense: dense ?? true,
//         suffix: suffix,
//         suffixIcon: suffixIcon,
//         contentPadding: contentPadding ??
//             const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//         hintText: hintText,
//         hintStyle: hintTextStyle ??
//             Theme.of(context).textTheme.bodyMedium!.copyWith(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//                 color: Theme.of(context).hintColor),
//         filled: filled ?? true,
//         //fillColor ?? Theme.of(context).scaffoldBackgroundColor
//         errorStyle: TextStyle(
//           color: AppColors.red.withAlpha((0.8 * 255).toInt()),
//           fontWeight: FontWeight.bold,
//           fontSize: 13,
//         ),
//         labelText: labelText,
//         labelStyle: labelStyle ??
//             Theme.of(context).textTheme.labelLarge!.copyWith(
//                 fontSize: 17.5,
//                 color: Theme.of(context).disabledColor,
//                 fontWeight: FontWeight.w500),
//         floatingLabelBehavior: labelBehavior ?? FloatingLabelBehavior.always,
//         suffixIconConstraints: suffixConstraints,
//         // focusedErrorBorder: OutlineInputBorder(
//         //   borderSide: BorderSide(
//         //       color: AppColors.errorLight.withAlpha((0.8 * 255).toInt()), width: 1),
//         //   borderRadius: BorderRadius.circular(borderRadius),
//         // ),
//         disabledBorder: disabledBorder ??
//             OutlineInputBorder(
//               borderSide:
//               BorderSide(color: Theme.of(context).hintColor, width: 1),
//               borderRadius: BorderRadius.circular(borderRadius),
//             ),
//         // errorBorder: focusedBorder ??
//         //     OutlineInputBorder(
//         //       borderSide: BorderSide(
//         //         color: AppColors.errorLight.withAlpha((0.5 * 255).toInt()),
//         //         width: 1,
//         //       ),
//         //       borderRadius: BorderRadius.circular(borderRadius),
//         //     ),
//         // focusedBorder: focusedBorder ??
//         //     OutlineInputBorder(
//         //       borderSide:
//         //       BorderSide(color: Theme.of(context).hintColor, width: 1),
//         //       borderRadius: BorderRadius.circular(borderRadius),
//         //     ),
//         // enabledBorder: enabledBorder ??
//         //     OutlineInputBorder(
//         //       borderSide: BorderSide(
//         //         color: Theme.of(context).hintColor,
//         //         width: 1,
//         //       ),
//         //       borderRadius: BorderRadius.circular(borderRadius),
//         //     ),
//
//
//         fillColor: backgroundColor ?? backgroundColor,
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 200),
//           borderSide: BorderSide(
//             color: Colors.red, // visible red color
//             width: 1.5, // make sure it's visible
//           ),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius ?? 200),
//           borderSide: BorderSide(
//             color: Colors.redAccent, // or any noticeable color
//             width: 1.5,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide:
//           BorderSide(width: 1.5, color: borderColor ?? Color(0xffEEEEEE)),
//           borderRadius: BorderRadius.circular(borderRadius ?? 200),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide:
//           BorderSide(width: 1.5, color: borderColor ?? Color(0xffEEEEEE)),
//           borderRadius: BorderRadius.circular(borderRadius ?? 200),
//         ),
//         prefixIconConstraints: prefixConstraints,
//         prefixIcon: prefixIcon,
//       ),
//       inputFormatters: inputFormatters,
//       maxLines: maxLine == 0 ? null : maxLine,
//       textInputAction: textInputAction ?? TextInputAction.done,
//       controller: controller,
//       keyboardType: keyboardType ?? TextInputType.multiline,
//     );
//   }
// }

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String hintText;
  Validator? validator;
  TextInputType? keyboardType;
  bool? obscureText = false;
  bool? readOrEdit = false;
  Color? backgroundColor, borderColor;
  double? borderRadius, iconSize;
  bool? isPassword = false;
  int? maxLines;
  VoidCallback? callbackForPasswordShow;
  int? fontSize;
  String? originalPasswordToMatch;
  List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  ValueChanged<String>? onChanged;
  final IconData? icon;
  double? horizontalPadding;
  dynamic cursorColor,contentPadding,hintTextStyle,prefixIcon;

  CustomTextField({
    Key? key,
    this.originalPasswordToMatch,
    this.cursorColor,this.contentPadding,this.hintTextStyle, this.prefixIcon,
    this.callbackForPasswordShow,
    this.fontSize,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    required this.hintText,
     this.controller,
    this.isPassword,
    this.obscureText,
    this.readOrEdit,
    this.validator,
    this.iconSize,
    this.inputFormatters,
    this.maxLines,
    this.keyboardType,
    this.onTap,
    this.icon,this.horizontalPadding,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: inputFormatters ?? null,
        obscureText: false ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        scrollPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).viewInsets.bottom + 30),
        style: AppColors.montserratTextStyleSmall,
        readOnly: readOrEdit == null ? false : readOrEdit!,
        maxLines: maxLines ?? null,
        cursorColor: cursorColor ?? AppColors.black,
        decoration: InputDecoration(
          prefixIcon: prefixIcon ?? null,
          errorMaxLines: 20,
          suffixIcon: icon != null
              ? Icon(
            icon,
            size: iconSize,
            color: AppColors.textColor,
          )
              : isPassword == true
              ? IconButton(
            icon: Icon(Icons.visibility),
            onPressed: callbackForPasswordShow!,
          )
              : null,
          contentPadding: contentPadding ??EdgeInsets.symmetric(vertical: 12, horizontal: horizontalPadding ?? 10),
          hintText: hintText,
          hintStyle: hintTextStyle ?? GoogleFonts.montserrat(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: Color(0xffF9F9F9) ?? Colors.transparent,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 200),
            borderSide: BorderSide(
              color: Colors.red, // visible red color
              width: 1.5, // make sure it's visible
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 200),
            borderSide: BorderSide(
              color: Colors.redAccent, // or any noticeable color
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(width: 1.5, color: borderColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(borderRadius ?? 200),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(width: 1.5, color: borderColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(borderRadius ?? 200),
          ),
        ),
        onTap: onTap,
        onChanged: onChanged,
        validator: (value) {
          if (Validator.phone == validator) {
            return getPhoneNumberValidation(value);
          } else if (Validator.email == validator) {
            return getEmailValidation(value);
          } else if (Validator.password == validator) {
            return getPasswordValidator(value);
          } else if (Validator.notEmpty == validator) {
            return getEmptyValidation(value);
          } else if (Validator.otp == validator) {
            return getOtpValidation(value);
          } else if (Validator.plzSelectOne == validator) {
            return getEmptyDropDownValidation(value);
          } else if (Validator.passwordWithSpecial == validator) {
            return getPasswordWithSpecialCharacterValidator(value);
          } else if (Validator.passwordMatchValidation == validator) {
            return validatePasswordMatchedOrNot(
                value, originalPasswordToMatch!);
          }
          return null;
        });
  }
}

enum Validator {
  phone,
  email,
  password,
  passwordWithSpecial,
  notEmpty,
  otp,
  plzSelectOne,

  passwordMatchValidation
}


getOtpValidation(String? value) {
  if (value != null) {
    if (value.length != 6) {
      return 'OTP must be of 6 digit';
    } else
      return null;
  } else {
    return "OTP must be of 6 digit";
  }
}

getEmailValidation(String? value) {
  print(value.runtimeType);
  const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  final regex = RegExp(pattern);

  if (value != null) {
    if (value.length < 1) {
      return "Please enter email address";
    } else {
      return value.isNotEmpty && !regex.hasMatch(value)
          ? 'Enter a valid email address'
          : null;
    }
  } else {
    print(value.runtimeType);
  }
}

getEmptyValidation(String? value) {
  print(value);
  if (value == null) {
    return '* Required';
  } else if (value.trim().length < 1) {
    return '* Required';
  } else
    return null;
}

getEmptyDropDownValidation(String? value) {
  print(value);
  if (value == null || value == '') {
    return '* Please Select';
  } else
    return null;
}

getPhoneNumberValidation(String? value) {
  if (value != null) {
    if (value.length != 10) {
      return 'Mobile Number must be of 10 digit';
    } else
      return null;
  } else {
    return "Mobile Number must be of 10 digit";
  }
}

getPasswordValidator(String? value) {
  if (value != null) {
    if (value.length != 6) {
      return 'Kindly enter your password minimum 6 \nlength characters';
    } else
      return null;
  } else {
    return "Kindly enter your password minimum 6 \nlength characters";
  }
}

getPasswordWithSpecialCharacterValidator(String? value) {
  var map = new Map();

  if (value!.isEmpty) {
    return '*Password is required \n *Password must contain at least one uppercase letter \n *Password must contain at least one lowercase letter \n *Password must contain at least one special character \n *Password must be 6 character long \n *Password must contain at least one digit ';
  }
  if (!containsUppercase(value)) {
    return '*Password must contain at least one uppercase letter \n *Password must contain at least one lowercase letter \n *Password must contain at least one special character \n *Password must be 6 character long \n *Password must contain at least one digit ';
  }
  if (!containsLowercase(value)) {
    return 'Password must contain at least one lowercase letter';
  }
  if (!containsSpecialCharacter(value)) {
    return 'Password must contain at least one special character';
  }
  if (value.length < 8) {
    return 'Password must be 6 character long';
  }

  if (!containsDigit(value)) {
    return 'Password must contain at least one digit';
  }
  return null;
}

validatePasswordMatchedOrNot(String? value, String prevPassword) {
  var map = new Map();

  if (value != prevPassword) {
    return 'Password not matches properly';
  } else {
    return null;
  }
}

bool containsDigit(String value) {
  for (var char in value.runes) {
    var character = new String.fromCharCode(char);
    if (character.contains(new RegExp(r'[0-9]'))) {
      return true;
    }
  }
  return false;
}

bool containsUppercase(String value) {
  for (var char in value.runes) {
    var character = new String.fromCharCode(char);
    if (character == character.toUpperCase() &&
        character != character.toLowerCase()) {
      return true;
    }
  }
  return false;
}

bool containsLowercase(String value) {
  for (var char in value.runes) {
    var character = new String.fromCharCode(char);
    if (character == character.toLowerCase() &&
        character != character.toUpperCase()) {
      return true;
    }
  }
  return false;
}

bool containsSpecialCharacter(String value) {
  var specialCharacters = r"!@#\$&*~";
  for (var char in value.runes) {
    var character = new String.fromCharCode(char);
    if (specialCharacters.contains(character)) {
      return true;
    }
  }
  return false;
}