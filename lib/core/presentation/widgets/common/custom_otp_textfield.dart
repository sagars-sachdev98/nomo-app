// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

// class CustomOtpTextField extends StatefulWidget {
//   const CustomOtpTextField(
//       {super.key,
//       this.onChanged,
//       required this.onCompleted,
//       this.otptextfieldlength,
//       required this.controller});
//   final Function(String)? onChanged;
//   final Function(String) onCompleted;
//   final int? otptextfieldlength;
//   final TextEditingController controller;
//   @override
//   State<CustomOtpTextField> createState() => _CustomOtpState();
// }

// class _CustomOtpState extends State<CustomOtpTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return PinCodeTextField(
//       controller: widget.controller,
//       cursorColor: Theme.of(context).colorScheme.onSurface,
//       appContext: context,
//       length: 4,
//       cursorHeight: 18,
//       textStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
//       keyboardType: TextInputType.number,
//       hintCharacter: "*",
//       hintStyle: const TextStyle(fontSize: 20),
//       inputFormatters: <TextInputFormatter>[
//         FilteringTextInputFormatter.allow(RegExp("[0-9]")),
//       ],
//       animationType: AnimationType.fade,
//       pinTheme: PinTheme(
//           shape: PinCodeFieldShape.box,
//           borderRadius: BorderRadius.circular(7),
//           fieldHeight: 40,
//           fieldWidth: 40,
//           fieldOuterPadding: const EdgeInsets.only(right: 8),
//           inactiveFillColor: Theme.of(context).colorScheme.onPrimary,
//           selectedFillColor: Theme.of(context).colorScheme.onPrimary,
//           selectedColor: Theme.of(context).colorScheme.secondary,
//           inactiveColor: Theme.of(context).colorScheme.secondary,
//           activeFillColor: Theme.of(context).colorScheme.onPrimary,
//           borderWidth: 1),
//       animationDuration: const Duration(milliseconds: 300),
//       enableActiveFill: true,
//       onCompleted: widget.onCompleted,
//       onChanged: widget.onChanged ?? (value) {},
//       beforeTextPaste: (text) {
//         return true;
//       },
//     );
//   }
// }
