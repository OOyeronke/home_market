import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/home_page.dart';
import 'package:home_market/screens/home/main_screen.dart';
import 'package:home_market/screens/home/product_page.dart';
import 'package:home_market/screens/landing_page.dart';
import 'package:home_market/screens/logging_screens.dart/login_page.dart';
import 'package:home_market/screens/products/products_item.dart';
import 'package:home_market/splash_screen.dart';

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
