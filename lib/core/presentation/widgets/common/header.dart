// // ignore_for_file: lines_longer_than_80_chars

// import 'package:collection_management/common/shared_ui.dart';
// import 'package:collection_management/helper/string_extension.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_utils/get_utils.dart';
// import 'custom_text.dart';

// class Header extends StatelessWidget {
//   final String title;
//   const Header({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SharedUi().flavorBased(
//           Image.asset("logo".png, scale: 4),
//           Image.asset("logo".png, height: 130, width: 130),
//         ),
//         Center(
//             child: CustomText(title)
//                 .hl(fontColor: Theme.of(context).primaryColorDark)
//                 .paddingOnly(top: 15)),
//       ],
//     );
//   }
// }

// // returnFlavor(iob, idbi,{bool? returnDouble}) {
// //   var productName = FlavorConfig.instance!.productName;
// //   if (productName == "IOB") {
// //     return double.parse("$iob");
// //   } else {
// //     return idbi;
// //   }
// // }
