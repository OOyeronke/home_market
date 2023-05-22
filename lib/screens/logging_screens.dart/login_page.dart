import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/main_screen.dart';
import 'package:home_market/screens/logging_screens.dart/sign_up_screen.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/button.dart';
import 'package:home_market/widget/custom_text_field.dart';

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
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60.0, left: 20, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: "Hello Again!",
                    color: const Color(0xFF656D4A),
                  ),
                  Image.asset("assets/images/fresh-romaine-lettuce-white 4.png")
                ],
              ),
              SmallText(
                text: "Welcome back, we have missed you",
                size: 14,
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Email address",
                    size: 16,
                  ),
                  // const Text(
                  //   "Enter address",
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 16,
                  //       color: Color(0xFF343A40)),
                  // ),
                  CustomTextField(
                    hintText: "Enter your email address",
                    textEditingController: emailTextEditingController,
                    isObsecre: false,
                    enabled: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BigText(
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
                      padding: const EdgeInsets.only(right: 20),
                      child: SmallText(
                        text: "Forgot your password?",
                        color: Color(0xFF656D4A),
                        size: 13,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: CustomButton(
                    text: "Log In",
                    height: 50,
                    width: 400,
                    onPressed: () {
                      Get.to(() => MainScreen());
                    },
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(
                        text: "Don't have an account yet?",
                        size: 14,
                        // color: Color(0xFF6C757D),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: SmallText(
                          text: "Sign Up",
                          size: 14,
                          color: Color(0xFF656D4A),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(children: [
                    const Expanded(
                      child: Divider(),
                    ),
                    SmallText(text: "  Or Login with Biometrics  "),
                    // Text(
                    //   "  Or Login with Biometrics  ",
                    //   style: TextStyle(color: Color(0xFF6C757D)),
                    // ),
                    const Expanded(
                      child: Divider(),
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      //alignment: Alignment.bottomCenter,
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFC2C5AA)),
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
