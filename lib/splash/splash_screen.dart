import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_market/screens/landing_page.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 4), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => Landing()));
    });
  }

  @override
  void initState()
  // Called authomatically when user is on this screen
  {
    super.initState();
    splashScreenTimer();
  }

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        //padding: EdgeInsets.all(1.0),
        child: Image.asset(
          "assets/images/splash_screen.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
