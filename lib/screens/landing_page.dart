import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/logging_screens.dart/login_page.dart';
import 'package:home_market/screens/logging_screens.dart/sign_up_screen.dart';
import 'package:home_market/screens/slider.dart';
import 'package:home_market/utilities/colors.dart';

import '../utilities/small_text.dart';
import '../widget/button.dart';
import '../widget/dimensions.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    SliderPage(
      title: "Buy your Groceries with ease",
      description:
          "Shop from the thousands of groceries, fruits, beef, livestock, vegetables, beverages, e.t.c in our stores with ease",
      image: "assets/images/onboarding_screen1.png",
    ),
    SliderPage(
      title: "Get discount on bulk orders",
      description:
          "Get amazing discount when you order in bulk and also, when you use the app frequently",
      image: "assets/images/onboarding_screen2.png",
    ),
    SliderPage(
      title: "Your order delivered to your doorstep",
      description:
          "Once you have selected everything you want to buy in the app, input your address and it will be delivered to your doorstep",
      image: "assets/images/onboarding_screen3.png",
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
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
                        duration: const Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? AppColors.green
                                : AppColors.sliderColor.withOpacity(0.5)));
                  })),
              CustomButton(
                text: 'Sign Up',
                width: Dimensions.screenWidth * 0.7,
                height: Dimensions.screenHeight * 0.065,
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
              ),
              SizedBox(
                height: Dimensions.screenHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SmallText(
                    text: "Already have an account?",
                    size: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const LogIn());
                    },
                    child: const SmallText(
                      text: "Log In",
                      size: 14,
                      color: AppColors.iconColor1,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.screenHeight * 0.02,
              )
            ],
          ),
        ],
      ),
    );
  }
}
