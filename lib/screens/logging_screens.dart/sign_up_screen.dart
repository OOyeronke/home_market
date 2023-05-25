import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/logging_screens.dart/buyer_sign_up_page.dart';
import 'package:home_market/screens/logging_screens.dart/seller_sign_up_page.dart';
import 'package:home_market/utilities/small_text.dart';

import '../../utilities/colors.dart';
import '../../widget/button.dart';
import '../../widget/dimensions.dart';
import 'login_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Column(
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
                    top: Dimensions.screenHeight * 0.52,
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
                          SizedBox(
                            height: Dimensions.screenHeight * 0.1,
                          ),
                          const SmallText(
                            text: "Sign up a buyer or a seller",
                            size: 16,
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.02,
                          ),
                          CustomButton(
                            text: 'Sign Up as a Buyer',
                            textsize: 18,
                            onPressed: () {
                              Get.to(() => const BuyerSignUpPage());
                            },
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.02,
                          ),
                          CustomButton(
                            text: 'Sign Up as a Seller',
                            textsize: 18,
                            color: Colors.white,
                            textcolor: AppColors.iconColor1,
                            onPressed: () {
                              Get.to(() => const SellerSignUpPage());
                            },
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.04,
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
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
