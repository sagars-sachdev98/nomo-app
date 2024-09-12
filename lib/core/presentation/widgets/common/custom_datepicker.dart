// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:torus/core/presentation/common/custom_text.dart';

// class SharedDatePicker {
//   void _onSelectionChanged(DateRangePickerSelectionChangedArgs args,
//       Function(DateTime startDate, DateTime? endDate) onChanged) {
//     if (args.value is PickerDateRange) {
//       if (args.value != null) {
//         DateTime startDate = args.value.startDate;
//         DateTime? endDate = args.value.endDate;
//         var newStartDate = DateTime(
//           startDate.year,
//           startDate.month,
//           startDate.day,
//         );
//         if (endDate != null) {
//           var newEndDate = DateTime(
//             endDate.year,
//             endDate.month,
//             endDate.day,
//           );
//           onChanged(newStartDate, newEndDate);
//         } else {
//           onChanged(newStartDate, null);
//         }
//       }
//     } else if (args.value is DateTime) {
//       DateTime date = args.value;
//       onChanged(date, null);
//     }
//   }

//   datePicker(BuildContext context,
//       {DateRangePickerSelectionMode? selectionMode,
//       // Function(DateTime startDate, DateTime endDate)? onChangedDateRange,
//       Function(DateTime startDate, DateTime? endDate)? onSetDate,
//       Function()? onCancel}) {
//     DateTime? selectedStartDate;
//     DateTime? selectedEndDate;
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             backgroundColor: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20.0),
//             ),
//             actions: <Widget>[
//               ElevatedButton(
//                   onPressed: () {
//                     if (onCancel != null) {
//                       onCancel();
//                     }
//                   },
//                   child: CustomText("Cancel").ds()),
//               ElevatedButton(
//                   onPressed: () {
//                     if (onSetDate != null) {
//                       onSetDate(selectedStartDate!, selectedEndDate);
//                     }
//                   },
//                   child: CustomText("Set").ds())
//             ],
//             content: SizedBox(
//               height: 300,
//               width: 300,
//               child: SfDateRangePicker(
//                 initialSelectedDate: DateTime.now(),
//                 onSelectionChanged: (args) {
//                   _onSelectionChanged(
//                     args,
//                     (startDate, endDate) {
//                       selectedStartDate = startDate;
//                       selectedEndDate = endDate;
//                       // if (selectionMode ==
//                       //     DateRangePickerSelectionMode.single) {
//                       // onSetDate!(startDate, endDate);
//                       // } else if (selectionMode ==
//                       //     DateRangePickerSelectionMode.range) {
//                       //   onChangedDateRange!(startDate, endDate!);
//                       // }
//                     },
//                   );
//                 },
//                 selectionMode: DateRangePickerSelectionMode.range,
//               ),
//             ),
//           );
//         });
//   }
// }


