import 'package:flutter/material.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:torus/core/presentation/common/custom_text.dart';

class CustomPrimaryButton extends StatelessWidget {
  final MaterialStateProperty<Color?>? buttonColor;
  final Widget textValue;
  final Color? textColor;
  final VoidCallback? onPress;
  final double? height;
  final double? width;
  final double? radius;
  final double? fontSize;
  final BorderSide? borderSide;

  const CustomPrimaryButton(
      {Key? key,
      this.buttonColor,
      required this.textValue,
      this.textColor,
      this.onPress,
      this.height,
      this.width,
      this.fontSize,
      this.radius,
      this.borderSide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
      child: SizedBox(
          height: height ?? 50,
          width: width ?? 110,
          child: ElevatedButton(
              onPressed: onPress,
              style: ButtonStyle(
                backgroundColor: buttonColor ??
                    Theme.of(context)
                        .elevatedButtonTheme
                        .style!
                        .backgroundColor,
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius ?? 7.0),
                        side: borderSide ?? BorderSide.none)),
              ),
              child: textValue)

          //  Material(
          //   color: Colors.transparent,
          //   child: InkWell(
          //     onTap: onPress,
          //     borderRadius: BorderRadius.circular(14.0),
          //     child: Center(
          //       child: Text(
          //         textValue,
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //             color: buttonTextColor ??
          //                 Theme.of(context).colorScheme.onPrimary,
          //             fontSize: fontSize ?? 17,
          //             fontFamily: "Roboto-Medium"),
          //         //style: heading4.copyWith(color: textColor),
          //       ),
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
