import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_market/screens/account/profile_page.dart';
import 'package:home_market/screens/cart/cart_page.dart';
import 'package:home_market/screens/cart/favorite_page.dart';
import 'package:home_market/screens/home/home_page.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late PersistentTabController _controller;
  // List pages = [
  //   MainFoodpage(),
  //   SignUpScreen(),
  //   CartHistory(),
  //   AccountScreen(),
  // ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const FavoritePage(),
      const CartPage(),
      const ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.home,
        ),
        title: "Home",
        activeColorPrimary: Color(0xFF656D4A),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.heart),
        title: ("Favorite"),
        activeColorPrimary: Color(0xFF656D4A),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.cart_fill),
        title: ("Cart"),
        activeColorPrimary: Color(0xFF656D4A),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: Color(0xFF656D4A),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: pages[_selectedIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //         selectedItemColor: Colors.blueAccent,
  //         unselectedItemColor: Colors.amberAccent,
  //         showSelectedLabels: false,
  //         showUnselectedLabels: false,
  //         selectedFontSize: 0.0,
  //         unselectedFontSize: 0.0,
  //         currentIndex: _selectedIndex,
  //         onTap: onTapNav,
  //         items: const [
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.home_outlined,
  //               ),
  //               label: "home"),
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.archive,
  //               ),
  //               label: "history"),
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.shopping_cart,
  //               ),
  //               label: "cart"),
  //           BottomNavigationBarItem(
  //               icon: Icon(
  //                 Icons.person,
  //               ),
  //               label: "me"),
  //         ]),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style5, // Choose the nav bar style with this property.
    );
  }
}
