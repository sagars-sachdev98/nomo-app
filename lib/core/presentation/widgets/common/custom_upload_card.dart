// // ignore_for_file: avoid_redundant_argument_values, sized_box_for_whitespace

// // import 'package:collection_management/utility/size_config.dart';
// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';


// import 'custom_text.dart';

// class CustomUploadCard extends StatefulWidget {
//   final Color? borderColor;
//   final String? title;
//   final String? subtitle;
//   const CustomUploadCard(
//       {Key? key, this.borderColor, this.title, this.subtitle})
//       : super(key: key);

//   static String routeName = "/upload_screen";
//   @override
//   State<CustomUploadCard> createState() => _CustomUploadCardState();
// }

// class _CustomUploadCardState extends State<CustomUploadCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               CustomText(
//                 widget.title ?? "",
//               ).tl(),
//               CustomText(
//                 "  *",
//               ).tl().textColor(Theme.of(context).colorScheme.error),
//             ],
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           DottedBorder(
//             color: widget.borderColor == null
//                 ? Theme.of(context).colorScheme.secondary
//                 : widget.borderColor!,
//             strokeWidth: 1,
//             dashPattern: const [6, 6],
//             child: Container(
//               // height: SizeConfig.blockSizeVertical! * 15,
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Theme.of(context).colorScheme.outline,
//                       borderRadius: BorderRadius.circular(4)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.upload,
//                         color: Theme.of(context).primaryColor,
//                       ),
//                       const SizedBox(
//                         width: 8,
//                       ),
//                       CustomText(
//                         widget.subtitle ?? "",
//                       ).tl()
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
