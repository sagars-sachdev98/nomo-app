import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Color? buttonColor;
  final String textValue;
  final VoidCallback? onPress;
  final double? height;
  final double? width;
  final double? radius;
  final Color? buttonTextColor;
  final double? fontSize;

  const CustomTextButton(
      {Key? key,
      this.buttonColor,
      required this.textValue,
      this.buttonTextColor,
      this.onPress,
      this.height,
      this.width,
      this.fontSize,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    
     InkWell(
      onTap: onPress,
      child: Text(
        textValue,

        style: TextStyle(
            color: buttonTextColor ?? Theme.of(context).colorScheme.primary,
            fontFamily: "Roboto-Regular",
            fontSize: fontSize ?? 14),
        //style: heading4.copyWith(color: textColor),
      ),
    );
  }
}
