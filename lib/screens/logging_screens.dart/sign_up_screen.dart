import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/logging_screens.dart/buyer_sign_up_page.dart';
import 'package:home_market/screens/logging_screens.dart/seller_sign_up_page.dart';
import 'package:home_market/utilities/small_text.dart';

import '../../widget/button.dart';
import 'login_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Image.asset(
                    'assets/images/signup.png',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0.0,
                      left: 0.0,
                      top: 400.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.1),
                              Colors.white,
                              Colors.white,
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 85,
                            ),
                            SmallText(
                              text: "Sign up a buyer or a seller",
                              size: 16,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              text: 'Sign Up as a Buyer',
                              textsize: 18,
                              onPressed: () {
                                Get.to(() => BuyerSignUpPage());
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              text: 'Sign Up as a Seller',
                              textsize: 18,
                              color: Colors.white,
                              textcolor: Color(0xFF656D4A),
                              onPressed: () {
                                Get.to(() => SellerSignUpPage());
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
                                  size: 14,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => LogIn());
                                  },
                                  child: SmallText(
                                    text: "Log In",
                                    size: 14,
                                    color: Color(0xFF656D4A),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
