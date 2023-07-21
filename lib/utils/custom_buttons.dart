import 'package:flutter/material.dart';
import 'package:living_pro/utils/text.dart';

import 'colors.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final VoidCallback onPressed;
  final Color? buttonTextColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? buttonColor;
  final double? buttonRadius;
  final FontWeight? buttonTextWeight;
  final bool Function()? validator;

  const CustomButton(
      {required this.text,
      required this.onPressed,
      this.buttonWidth,
      this.buttonTextColor,
      this.validator,
      this.buttonRadius,
      this.buttonHeight,
      this.buttonTextWeight,
      this.buttonColor,
      this.fontSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight ?? 55,
      width: buttonWidth ?? double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonRadius ?? 9),
        color: (validator == null ? true : validator!())
            ? buttonColor ?? AppColor.primary1
            : AppColor.primary1.withOpacity(.3),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            const EdgeInsets.only(top: 9, bottom: 9),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRadius ?? 9),
            ),
          ),
        ),
        onPressed: (validator == null ? true : validator!()) ? onPressed : null,
        child: BaseText(
          text: text,
          size: fontSize ?? 14,
          weight: FontWeight.w600,
          color: buttonTextColor ?? (Colors.white),
        ),
      ),
    );
  }
}




class CustomBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomBackButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: onTap ?? () => (context),
        icon: const Icon(Icons.arrow_back_ios_new, size: 19),
      ),
    );
  }
}
