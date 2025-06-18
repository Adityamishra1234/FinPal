import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomButton extends StatefulWidget {
  final LinearGradient? gradient;
  final BorderRadius? borderRadius;
  final BoxShadow? boxShadow;
  final Color? color,iconColor;
  final double? height, width, buttonTextSize;
  final FontWeight? buttonFontWeight;
  final String buttonText;
  final TextAlign? textAlign;
  final IconData? icon;
  final dynamic onTap;
  const CustomButton({super.key,  this.gradient, this.borderRadius, this.boxShadow, this.color, this.height, this.width, required this.buttonText, this.buttonTextSize, this.buttonFontWeight,this.textAlign, this.icon, this.iconColor, this.onTap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: AppColors.transparent,
      hoverColor: AppColors.transparent,
      focusColor: AppColors.transparent,
      splashColor: AppColors.transparent,
      onTap: widget.onTap,
      child: Container(
        height: widget.height ?? 10,
        width: widget.width ?? 100,
        decoration: BoxDecoration(
          gradient: widget.gradient ?? null,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
          boxShadow: [widget.boxShadow ?? BoxShadow()],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: widget.textAlign,
              overflow: TextOverflow.ellipsis,
              widget.buttonText,
              style: TextStyle(
                  color: widget.color ?? AppColors.black,
                  fontSize: widget.buttonTextSize ?? 10,
                  fontWeight: widget.buttonFontWeight ?? FontWeight.w500),
            ),
            const SizedBox(width: 10,),
            Flexible(
              child: Icon(widget.icon ??  Icons.arrow_circle_right_rounded, color: widget.iconColor ?? AppColors.black,),
            )
          ],
        ),
      ),
    );
  }
}
