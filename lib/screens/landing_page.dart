import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/logging_screens.dart/login_page.dart';
import 'package:home_market/screens/logging_screens.dart/seller_sign_up_page.dart';
import 'package:home_market/screens/logging_screens.dart/sign_up_screen.dart';
import 'package:home_market/screens/slider.dart';

import '../utilities/small_text.dart';
import '../widget/button.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    SliderPage(
      title: "Buy your Groceries",
      description:
          "Shop from the thousands of groceries, friuts, beef, livestock,",
      image: "assets/images/onboarding_screen1.png",
      description2: 'vegetables, beverages, e.t.c in our stores with ease',
      title2: ' with ease',
    ),
    SliderPage(
      title: "Get discount on",
      description: "Get amazing discount when you order in bulk and also,",
      image: "assets/images/onboarding_screen2.png",
      description2: 'when you use the app frequently',
      title2: 'bulk orders',
    ),
    SliderPage(
      title: "Your order delivered",
      description:
          "Once you have selected everything you want to buy in the app,",
      image: "assets/images/onboarding_screen3.png",
      description2:
          'input your address and it will be delivered to your doorstep',
      title2: 'to your doorstep',
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.blue
                                : Colors.blue.withOpacity(0.5)));
                  })),
              CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallText(
                    text: "Already have an account?",
                    size: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => LogIn());
                    },
                    child: SmallText(
                      text: "Log in",
                      size: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
