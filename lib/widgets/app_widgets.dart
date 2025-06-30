import 'package:finance_app/app/modules/confirm_transfer/controllers/confirm_transfer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import '../common/app_colors.dart';

int currentIndex = 0;
dotContainer(int index) => Container(
  height: 10,
  width: currentIndex == index ? 18 : 12,
  margin: const EdgeInsets.symmetric(horizontal: 6),
  decoration: BoxDecoration(
    color: currentIndex == index ? AppColors.primaryColor : AppColors.white,
    borderRadius: BorderRadius.circular(20),
  ),
);


/// Popup widget that you can use by default to show some information
class CustomSnackBar extends StatefulWidget {
  final String message;
  final Widget icon;
  final Color backgroundColor;
  final TextStyle textStyle;
  final int iconRotationAngle;

  const CustomSnackBar.success({
    super.key,
    required this.message,
    this.icon = const Icon(
      Icons.check_circle_outline,
      color: Color(0xff00E676), //const Color(0x15000000),
      size: 20,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Colors.white,
    ),
    this.iconRotationAngle = 32,
    this.backgroundColor = const Color(0xff00E676),
  });

  const CustomSnackBar.info({
    super.key,
    required this.message,
    this.icon = const Icon(
      Icons.info_outline,
      color: AppColors.primaryColor,
      // color: Color(0xff2196F3),
      size: 20,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Colors.white,
    ),
    this.iconRotationAngle = 32,
    this.backgroundColor = AppColors.primaryColor,
    // this.backgroundColor = const Color(0xff2196F3),
  });

  const CustomSnackBar.error({
    super.key,
    required this.message,
    this.icon = const Icon(
      Icons.error_outline,
      color: Color(0xffff5252), //const Color(0x15000000),
      size: 20,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Colors.white,
    ),
    this.iconRotationAngle = 32,
    this.backgroundColor = const Color(0xffff5252),
  });

  @override
  CustomSnackBarState createState() => CustomSnackBarState();
}

class CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: widget.backgroundColor, width: 1),
        boxShadow: [
          BoxShadow(
            color: widget.backgroundColor.withOpacity(0.1),
            offset: const Offset(0.0, 8.0),
            spreadRadius: 1,
            blurRadius: 30,
          ),
        ],
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor.withOpacity(0.05),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
          ),
          // Positioned(
          //   top: -10,
          //   left: -8,
          //   child: ClipRRect(
          //     child: Container(
          //       height: 95,
          //       child: Transform.rotate(
          //         angle: widget.iconRotationAngle * pi / 180,
          //         child: widget.icon,
          //       ),
          //     ),
          //   ),
          // ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  widget.icon,
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      widget.message,
                      overflow: TextOverflow.ellipsis,
                      textScaler: TextScaler.noScaling,
                      style: theme.textTheme.bodyMedium
                          ?.merge(
                        widget.textStyle,
                      )
                          .copyWith(
                        color: widget.backgroundColor,
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                    ),
                  ),
                  Icon(
                    Icons.clear,
                    size: 18,
                    color: widget.backgroundColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//p-input field
Widget buildPinPut() {
  final defaultPinTheme = PinTheme(
    width: 50,
    height: 50,

    textStyle: AppColors.bankName,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.textColor.withOpacity(0.5)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: AppColors.primaryColor),
    borderRadius: BorderRadius.circular(8),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: AppColors.transparent,
    ),
  );

  return GestureDetector(
    onTap: (){},
    child: Pinput(
      controller: Get.find<ConfirmTransferController>().pinController,
      isCursorAnimationEnabled: true,
      autofocus: true,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      readOnly: true,
      validator: (s) {
        return s == '2222' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    ),
  );
}


class CustomNumberKeyboard extends StatelessWidget {
  final void Function(String) onKeyTap;
  final VoidCallback onBackspace;
  final VoidCallback onFingerprintTap;

  const CustomNumberKeyboard({
    super.key,
    required this.onKeyTap,
    required this.onBackspace,
    required this.onFingerprintTap,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    List<String> keys = [
      '1', '2', '3',
      '4', '5', '6',
      '7', '8', '9',
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(3, (rowIndex) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (colIndex) {
              String key = keys[rowIndex * 3 + colIndex];
              return _buildKey(key, () => onKeyTap(key),width);
            }),
          );
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildIconKey(Icons.fingerprint, onFingerprintTap,width),
            _buildKey('0', () => onKeyTap('0'), width),
            _buildIconKey(Icons.backspace, onBackspace,width),
          ],
        ),
      ],
    );
  }

  Widget _buildKey(String label, VoidCallback onTap, width) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.124, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.textColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),

          ),
          child: Text(
            label,
            style: AppColors.landingPageTextStyle
          ),
        ),
      ),
    );
  }

  Widget _buildIconKey(IconData icon, VoidCallback onTap, width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.124, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.textColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),

            ),
            child: Icon(icon, size: 28)),
      ),
    );
  }
}

