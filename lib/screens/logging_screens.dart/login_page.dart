import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/main_screen.dart';
import 'package:home_market/screens/logging_screens.dart/sign_up_screen.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/button.dart';
import 'package:home_market/widget/custom_text_field.dart';

import '../../utilities/colors.dart';
import '../../widget/dimensions.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    Dimensions().init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: Dimensions.screenHeight * 0.075,
          left: Dimensions.screenWidth * 0.05,
          right: Dimensions.screenWidth * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BigText(
                    text: "Hello Again!",
                    color: AppColors.iconColor1,
                  ),
                  Image.asset("assets/images/fresh-romaine-lettuce-white 4.png")
                ],
              ),
              const SmallText(
                text: "Welcome back, we have missed you",
                size: 14,
              ),
              SizedBox(
                height: Dimensions.screenHeight * 0.04,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BigText(
                    text: "Email address",
                    size: 16,
                  ),
                  CustomTextField(
                    hintText: "Enter your email address",
                    textEditingController: emailTextEditingController,
                    isObsecre: false,
                    enabled: true,
                  ),
                  SizedBox(
                    height: Dimensions.screenHeight * 0.02,
                  ),
                  const BigText(
                    text: "Password",
                    size: 16,
                  ),
                  CustomTextField(
                    hintText: "Enter your password",
                    textEditingController: passwordTextEditingController,
                    isObsecre: _isHidden,
                    enabled: true,
                    suffIcon1: Icons.visibility,
                    suffIcon2: Icons.visibility_off,
                    onPressed: () {
                      _togglePasswordView();
                    },
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      padding:
                          EdgeInsets.only(right: Dimensions.screenWidth * 0.04),
                      child: const SmallText(
                        text: "Forgot your password?",
                        color: AppColors.iconColor1,
                        size: 13,
                      )),
                  SizedBox(
                    height: Dimensions.screenHeight * 0.02,
                  ),
                  Center(
                      child: CustomButton(
                    text: "Log In",
                    height: Dimensions.screenHeight * 0.08,
                    width: Dimensions.screenHeight * 0.7,
                    onPressed: () {
                      Get.to(() => const MainScreen());
                    },
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallText(
                        text: "Don't have an account yet?",
                        size: 14,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SignUpScreen());
                        },
                        child: const SmallText(
                          text: "Sign Up",
                          size: 14,
                          color: AppColors.iconColor1,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.screenHeight * 0.04,
                  ),
                  const Row(children: [
                    Expanded(
                      child: Divider(),
                    ),
                    SmallText(text: "  Or Login with Biometrics  "),
                    Expanded(
                      child: Divider(),
                    ),
                  ]),
                  SizedBox(
                    height: Dimensions.screenHeight * 0.05,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: Dimensions.screenHeight * 0.01,
                        bottom: Dimensions.screenHeight * 0.01,
                        left: Dimensions.screenWidth * 0.01,
                        right: Dimensions.screenWidth * 0.01,
                      ),
                      height: Dimensions.screenHeight * 0.09,
                      width: Dimensions.screenWidth * 0.2,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.containerColor),
                      child: Image.asset(
                        "assets/images/fingerprint.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/lettuce_bottom.png",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
