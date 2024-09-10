import 'package:flutter/material.dart';

class CustomLabelButton extends StatelessWidget {
  //final Color? buttonColor;
  final String textValue;
  final Color? textColor;
  final VoidCallback? onPress;
  final double? height;
  final double? width;
  final Color? buttonTextColor;
  final double? fontSize;

  const CustomLabelButton({
    Key? key,
    required this.textValue,
    this.textColor,
    this.buttonTextColor,
    this.onPress,
    this.height,
    this.width,
    this.fontSize,
    TextAlign? textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPress,
          borderRadius: BorderRadius.circular(14.0),
          child: Center(
            child: Text(textValue,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: buttonTextColor ??
                        Theme.of(context).colorScheme.onPrimary,
                    fontSize: fontSize ?? 14)),
          ),
        ),
      ),
    );
  }
}
