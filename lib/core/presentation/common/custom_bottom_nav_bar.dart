// import 'dart:ui';

// import 'package:flutter/material.dart';

// class TorusBottomNavigationBarAlt extends StatelessWidget {
//   final BottomNavType type;

//   const TorusBottomNavigationBarAlt({super.key, required this.type});

//   @override
//   Widget build(BuildContext context) {
//     final navList = context.read<CustomNavBarCubit>().buildNavList(type);
//     final pages = context.read<CustomNavBarCubit>().buildPages(type);
//     return BlocConsumer<CustomNavBarCubit, CustomNavBarState>(
//       builder: (context, state) {
//         return Scaffold(
//           body: PageView(
//             controller: context.watch<CustomNavBarCubit>().pageController,
//             children: pages,
//             onPageChanged: (index) {
//               context.read<CustomNavBarCubit>().onItemTapped;
//             },
//           ),
//           bottomNavigationBar: Container(
//             clipBehavior: Clip.hardEdge,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(GAUtils.vw(4, context)),
//                 topRight: Radius.circular(GAUtils.vw(4, context)),
//               ),
//             ),
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 140.0, sigmaY: 140.0),
//               child: Container(
//                 decoration: const BoxDecoration(color: Color(0xff001317)),
//                 height: GAUtils.vw(19, context),
//                 clipBehavior: Clip.hardEdge,
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: navList.asMap().entries.map((entry) {
//                     int idx = entry.key;
//                     Map<String, dynamic> e = entry.value;
//                     bool isActive = state.selectedIndex == idx;
//                     return InkWell(
//                       onTap: () =>
//                           context.read<CustomNavBarCubit>().onItemTapped(idx),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/icons/${e['icon']}',
//                             width: GAUtils.vw(4.2, context),
//                             height: GAUtils.vw(4.2, context),
//                             color: isActive
//                                 ? GAThemeConfig.mainColorAlt
//                                 : const Color(0xffABABAB),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             e['label'],
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: GAUtils.vw(2.9, context),
//                               color: isActive
//                                   ? const Color(0xffFFFFFF)
//                                   : const Color(0xffABABAB),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//       listener: (BuildContext context, CustomNavBarState state) {},
//     );
//   }
// }
