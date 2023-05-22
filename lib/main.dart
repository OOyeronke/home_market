import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/account/profile_page.dart';
import 'package:home_market/screens/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Landing(),
      //home: ProfilePage(),
      // home: ProductItem(
      //   image: 'assets/images/red_tomato2.png',
      //   image2: 'assets/images/lettuce2.png',
      //   image3: 'assets/images/pepper.png',
      //   price1: '\$14.99',
      //   price2: '\$11.99',
      //   text1: 'Lettuce',
      //   text2: 'Pepper',
      // ),
    );
  }
}
