// import 'package:collection_management/common/custom_text.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';

// class CustomDropDownList extends StatefulWidget {
//   final List<String> items;
//   final dynamic onItemSelected;
//   final String labelTitle;
//   final bool isRequired;
//   final String hintTitle;
//   final String? selectedItem;
//   const CustomDropDownList(
//       {super.key,
//       required this.items,
//       required this.onItemSelected,
//       required this.labelTitle,
//       required this.hintTitle,
//       this.selectedItem,
//       required this.isRequired});

//   @override
//   State<StatefulWidget> createState() {
//     return _CustomDropDownListState();
//   }
// }

// class _CustomDropDownListState extends State<CustomDropDownList>
//     with SingleTickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               CustomText(widget.labelTitle).tl(),
//               widget.isRequired
//                   ? CustomText(" *")
//                       .tl()
//                       .labelColor(Theme.of(context).colorScheme.error)
//                   : Container()
//             ],
//           ),
//           const SizedBox(height: 7),
//           DropdownSearch<String>(
//             popupProps: PopupProps.menu(
//               itemBuilder: (context, item, isSelected) {
//                 return Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 8),
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                   ),
//                   child: ListTile(
//                     selected: isSelected,
//                     title: Text(
//                       item,
//                       style: TextStyle(
//                           color: Theme.of(context).colorScheme.onSecondary,
//                           fontSize: 16,
//                           fontFamily: "Roboto-Regular",
//                           fontWeight: FontWeight.w300),
//                     ),
//                   ),
//                 );
//               },
//               fit: FlexFit.loose,
//               showSelectedItems: true,
//               disabledItemFn: (String s) => s.startsWith('I'),
//               menuProps: MenuProps(
//                   backgroundColor: Theme.of(context).colorScheme.onBackground,
//                   borderRadius: BorderRadius.circular(7)),
//             ),
//             items: widget.items,
//             dropdownDecoratorProps: DropDownDecoratorProps(
//               dropdownSearchDecoration: InputDecoration(
//                 contentPadding: const EdgeInsets.fromLTRB(12, 12, 8, 0),
//                 // labelText: widget.labelTitle,
//                 hintText: widget.hintTitle,
//                 hintStyle: TextStyle(
//                     color: Theme.of(context).colorScheme.onSecondary,
//                     fontSize: 16,
//                     fontFamily: "Roboto-Regular",
//                     fontWeight: FontWeight.w300),

//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(7),
//                   borderSide: BorderSide(
//                     color: Theme.of(context).colorScheme.secondary,
//                   ),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(7),
//                   borderSide: BorderSide(
//                     color: Theme.of(context).colorScheme.secondary,
//                   ),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(7),
//                   borderSide: BorderSide(
//                     color: Theme.of(context).colorScheme.secondary,
//                   ),
//                 ),
//               ),
//             ),
//             onChanged: widget.onItemSelected,
//             selectedItem: widget.selectedItem,
//           ),
//         ],
//       ),
//     );
//   }
// }
