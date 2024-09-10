// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:torus/core/data/enums/dg_listing_type.enum.dart';
// import 'package:torus/core/presentation/cubits/custom_nav_bar.state.dart';
// import 'package:torus/features/dg/dg_account/presentation/view/dg_profile_details.view.dart';
// import 'package:torus/features/dg/dg_home/presentation/views/dg_bullion_base.view.dart';
// import 'package:torus/features/dg/dg_vault/presentation/view/dg_vault.view.dart';
// import 'package:torus/models/global.dart';

// class CustomNavBarCubit extends Cubit<CustomNavBarState> {
//   CustomNavBarCubit() : super(CustomNavBarState(0));

//   final PageController pageController = PageController(initialPage: 0);

//   List<Map<String, dynamic>> buildNavList(BottomNavType type) {
//     switch (type) {
//       case BottomNavType.mf:
//         return [
//           {"label": "Dashboard", "icon": "home-nav-alt.svg"},
//           {"label": "Invest", "icon": "invest-alt.svg"},
//           {"label": "Portfolio", "icon": "portfolio-alt.svg"},
//           {"label": "Account", "icon": "account-alt.svg"},
//         ];
//       case BottomNavType.equity:
//         return [
//           {"label": "Dashboard", "icon": "home-nav-alt.svg"},
//           {"label": "Watchlist", "icon": "watchlist-new-alt.svg"},
//           {"label": "Orders", "icon": "order-alt.svg"},
//           {"label": "Portfolio", "icon": "portfolio-alt.svg"},
//           {"label": "Account", "icon": "account-alt.svg"},
//         ];
//       case BottomNavType.dg:
//         return [
//           {"label": "Dashboard", "icon": "home-nav-alt.svg"},
//           {"label": "Invest", "icon": "invest-alt.svg"},
//           {"label": "Vault", "icon": "vault-alt.svg"},
//           {"label": "Account", "icon": "account-alt.svg"},
//         ];
//       default:
//         return [];
//     }
//   }

//   List<Widget> buildPages(BottomNavType type) {
//     switch (type) {
//       case BottomNavType.mf:
//         return [
//           Container(),
//           Container(),
//           Container(),
//           Container(),
//         ];
//       case BottomNavType.equity:
//         return [
//           Container(),
//           Container(),
//           Container(),
//           Container(),
//           Container(),
//         ];
//       case BottomNavType.dg:
//         return [
//           DGBullionBaseView(),
//           DGBullionBaseView(
//             type: DGListingType.invest,
//           ),
//           DGVaultView(),
//           const DGProfileDetailView()
//         ];
//       default:
//         return [];
//     }
//   }

//   void onItemTapped(int index) {
//     pageController.jumpToPage(index);
//     emit(CustomNavBarState(index));
//   }
// }
