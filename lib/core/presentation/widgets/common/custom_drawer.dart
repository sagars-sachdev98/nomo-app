// // ignore_for_file: use_build_context_synchronously, avoid_print, lines_longer_than_80_chars

// import 'package:collection_management/common/custom_button.dart';
// import 'package:collection_management/common/custom_text.dart';
// import 'package:collection_management/helper/dimension_utils.dart';
// import 'package:collection_management/utility/size_config.dart';
// import 'package:collection_management/utility/sp_manager.dart';
// import 'package:collection_management/views/dashboard/dashboard.view.dart';
// import 'package:collection_management/views/login/reset_mpin.view.dart';
// import 'package:f_logs/f_logs.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:speridian_pkg/reportbug.dart';
// import '../helper/navigation_utils.dart';
// import '../views/login/login.view.dart';
// import '../views/todays_summary/today_summary.view.dart';
// import 'shared_ui.dart';

// class CustomDrawer extends StatefulWidget {
//   static String routeName = "/drawer_screen";
//   const CustomDrawer({super.key});

//   @override
//   State<CustomDrawer> createState() => _CustomDrawerState();
// }

// class _CustomDrawerState extends State<CustomDrawer> {
//   dynamic drawerList = [
//     {"icon": Icons.home, "name": "Home"},
//     //{"icon": Icons.restore, "name": "Update Center"},
//     {"icon": Icons.compare_arrows_outlined, "name": "MPIN Change"},
//     //{"icon": Icons.settings, "name": "Settings"},
//     {"icon": Icons.calendar_today, "name": "Today's Summary"},
//     // {"icon": Icons.logout_outlined, "name": "Logout"},
//   ];
//   final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
//   PackageInfo packageInfo = PackageInfo(
//     appName: 'Unknown',
//     packageName: 'Unknown',
//     version: 'Unknown',
//     buildNumber: 'Unknown',
//     buildSignature: 'Unknown',
//     installerStore: 'Unknown',
//   );

//   String userName = "";
//   String userRole = "";

//   @override
//   void initState() {
//     _initPackageInfo();
//     super.initState();
//     getstoredData();
//   }

//   Future<void> _initPackageInfo() async {
//     final info = await PackageInfo.fromPlatform();
//     setState(() {
//       packageInfo = info;
//       print(packageInfo.version);
//       print(packageInfo.buildNumber);
//       print(packageInfo.packageName);
//     });
//   }

//   getstoredData() async {
//     userName = await SPManager().getusername();
//     userRole = await SPManager().getuserRoleName();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       key: _key,
//       width: 270,
//       backgroundColor: Colors.transparent,
//       child: Opacity(
//         opacity: 0.85,
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: const BorderRadius.only(
//                 topRight: Radius.circular(10.0),
//                 bottomRight: Radius.circular(10.0)),
//             gradient: SharedUi().flavorBased(
//               const LinearGradient(
//                 colors: [
//                   Color(0xFF07429E),
//                   Color(0x0F0F0FA6),
//                 ],
//                 end: FractionalOffset(0.0, 1.8),
//                 begin: FractionalOffset(0.2, 0.0),
//               ),
//               const LinearGradient(
//                 colors: [
//                   Color(0xFF008D62),
//                   Color(0xFFF58220),
//                 ],
//                 end: FractionalOffset(0.0, 1.8),
//                 begin: FractionalOffset(0.2, 0.0),
//               ),
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ListView(
//                 shrinkWrap: true,
//                 children: [
//                   // ignore: sized_box_for_whitespace
//                   Container(
//                     height: 100.0,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Row(
//                             children: [
//                               hSize(1),
//                               CircleAvatar(
//                                 radius: 20,
//                                 backgroundColor:
//                                     Theme.of(context).colorScheme.secondary,
//                                 child: userName.isNotEmpty
//                                     ? CustomText(userName[0]).wml()
//                                     : CustomText(""),
//                               ),
//                               hSize(4),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   CustomText("Hi,")
//                                       .labelB()
//                                       .medium()
//                                       .labelColor(Theme.of(context)
//                                           .colorScheme
//                                           .onPrimary),
//                                   const SizedBox(
//                                     height: 2,
//                                   ),
//                                   CustomText(userName)
//                                       .labelB()
//                                       .medium()
//                                       .labelColor(Theme.of(context)
//                                           .colorScheme
//                                           .onPrimary),
//                                   const SizedBox(
//                                     height: 5,
//                                   ),
//                                   CustomText(userRole).labelS().labelColor(
//                                       Theme.of(context).colorScheme.onPrimary)
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Divider(thickness: 1, height: 2, color: Colors.white),

//                   vSize(2),
//                   for (int i = 0; i < drawerList.length; i++) ...[
//                     GestureDetector(
//                       onTap: () {
//                         switch (i) {
//                           case 0:
//                             NavigationUtils.goNext(
//                                 context, DashboardView.routeName);
//                             break;
//                           case 1:
//                             NavigationUtils.goBack(context);
//                             NavigationUtils.goNext(
//                                 context, ResetMpinView.routeName);
//                             break;
//                           case 2:
//                             NavigationUtils.goNext(
//                                 context, TodaySummaryView.routeName);
//                             break;
//                           // case 3:
//                           //   // NavigationUtils.goBack(context);
//                           //   logoutDialog();
//                           //   //doLogout();

//                           //   break;
//                           // case 4:

//                           //   break;
//                           default:
//                         }
//                       },
//                       child: ListTile(
//                         leading: Icon(
//                           drawerList[i]["icon"],
//                           size: 30,
//                           color: Theme.of(context).colorScheme.onPrimary,
//                         ),
//                         title: CustomText(
//                           "${drawerList[i]["name"]}",
//                         ).labelM().labelColor(
//                             Theme.of(context).colorScheme.onPrimary),
//                       ),
//                     ),
//                   ],

//                   GestureDetector(
//                     onTap: (() {
//                       navigator!.pop(context);
//                       logoutDialog();
//                     }),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.logout_outlined,
//                         size: 30,
//                         color: Theme.of(context).colorScheme.onPrimary,
//                       ),
//                       title: CustomText(
//                         "Logout",
//                       )
//                           .labelM()
//                           .labelColor(Theme.of(context).colorScheme.onPrimary),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: SizeConfig.blockSizeVertical! * 25),
//               // const Divider(thickness: 1, height: 2, color: Colors.white),

//               GestureDetector(
//                 onTap: () {
//                   // FLog.info(text: "Testing purpose added log");
//                   // ReportBug(
//                   //         ctx: context,
//                   //         userName: "Archana",
//                   //         reportTo: "krunal.darji@speridian.com")
//                   //     .composeReportBugMail("I am facing an issue");
//                 },
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 25, bottom: 20),
//                     child: CustomText("Version ${packageInfo.version}")
//                         .labelM()
//                         .labelColor(Theme.of(context).colorScheme.onPrimary),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   logoutDialog() {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(15.0))),
//           contentPadding: EdgeInsets.zero,
//           titlePadding: EdgeInsets.zero,
//           title: Container(
//             padding: const EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               color: Theme.of(context).colorScheme.primary,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(7.0),
//                 topRight: Radius.circular(7.0),
//               ),
//             ),
//             child: Column(
//               children: [
//                 CustomText("Are you sure you want to logout?")
//                     .labelM()
//                     .labelColor(Theme.of(context).colorScheme.onPrimary),
//                 const SizedBox(
//                   height: 25.0,
//                 ),
//               ],
//             ),
//           ),
//           content: Container(
//             height: 80,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(15.0),
//                   bottomRight: Radius.circular(15.0)),
//             ),
//             margin: EdgeInsets.zero,
//             padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     CustomPrimaryButton(
//                         textValue: "Yes",
//                         height: 35,
//                         width: 70,
//                         radius: 15,
//                         onPress: () async {
//                           SharedPreferences prefs =
//                               await SharedPreferences.getInstance();
//                           prefs.remove("authToken").then((value) async {
//                             String token = await SPManager().getAuthToken();
//                             print("token val after logout is $token");
//                             NavigationUtils.goNextFinishAll(
//                                 context, LoginView.routeName);
//                           });
//                         }),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor:
//                             Theme.of(context).colorScheme.onPrimary,
//                         padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15.0)),
//                       ),
//                       onPressed: () {
//                         Navigator.of(context).pop(false);
//                       },
//                       child: Text(
//                         "No",
//                         style: TextStyle(
//                           color: Theme.of(context).colorScheme.primary,
//                           fontSize: 16.0,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
