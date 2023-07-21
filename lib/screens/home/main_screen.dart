// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:home_market/favorite/favorite_page_screen.dart';
// import 'package:home_market/screens/cart/CartPage.dart';
// import 'package:home_market/screens/logging_screens.dart/login_page.dart';
// import 'package:home_market/screens/profile/profile_page.dart';
// import 'package:home_market/screens/cart/cart_page.dart';
// import 'package:home_market/screens/home/home_page.dart';
// import 'package:home_market/utilities/sample_data.dart';

// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// import '../../favorite/favorite_list_screen .dart';
// import '../../model/food_model.dart';
// import '../../utilities/colors.dart';
// import '../cart/homey_page.dart';
// import 'homeyyy_page.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({
//     super.key,
//   });

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0;
//   late PersistentTabController _controller;

//   void onTapNav(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _controller = PersistentTabController(initialIndex: 0);
//   }

//   List<Plant> favorites = [];
//   List<Plant> myCart = [];

//   List<Widget> _buildScreens() {
//     return [
//       //HomeyyyPage(),
//       HomeyPage(),
//       FavoritePageScreen(
//         favoritedPlants: favorites,
//       ),
//       CartPage(
//         addedToCartPlants: myCart,
//       ),
//       const ProfilePage(),
//     ];
//   }

//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: const Icon(
//           CupertinoIcons.home,
//         ),
//         title: "Home",
//         activeColorPrimary: AppColors.iconColor1,
//         inactiveColorPrimary: CupertinoColors.systemGrey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: const Icon(CupertinoIcons.heart),
//         title: ("Favorite"),
//         activeColorPrimary: AppColors.iconColor1,
//         inactiveColorPrimary: CupertinoColors.systemGrey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: const Icon(CupertinoIcons.cart_fill),
//         title: ("Cart"),
//         activeColorPrimary: AppColors.iconColor1,
//         inactiveColorPrimary: CupertinoColors.systemGrey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: const Icon(CupertinoIcons.person),
//         title: ("Profile"),
//         activeColorPrimary: AppColors.iconColor1,
//         inactiveColorPrimary: CupertinoColors.systemGrey,
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       confineInSafeArea: true,
//       backgroundColor: Colors.white,
//       handleAndroidBackButtonPress: true,
//       resizeToAvoidBottomInset: true,
//       stateManagement: true,
//       hideNavigationBarWhenKeyboardShows: true,
//       decoration: NavBarDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         colorBehindNavBar: Colors.white,
//       ),
//       popAllScreensOnTapOfSelectedTab: true,
//       popActionScreens: PopActionScreensType.all,
//       itemAnimationProperties: const ItemAnimationProperties(
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: const ScreenTransitionAnimation(
//         animateTabTransition: true,
//         curve: Curves.ease,
//         duration: Duration(milliseconds: 200),
//       ),
//       navBarStyle: NavBarStyle.style5,
//     );
//   }
// }
