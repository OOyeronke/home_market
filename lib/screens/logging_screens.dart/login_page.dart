import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/logging_screens.dart/seller_sign_up_page.dart';
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
                  BigText(text: "Hello Again!"),
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
                  const Text(
                    "Enter address",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  CustomTextField(
                    hintText: "Enter your email address",
                    textEditingController: emailTextEditingController,
                    isObsecre: false,
                    enabled: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  CustomTextField(
                    hintText: "Enter your password",
                    textEditingController: passwordTextEditingController,
                    isObsecre: false,
                    enabled: true,
                  ),
                  Container(
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.only(right: 20),
                      child: const Text(
                        "Forgot your password?",
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: CustomButton(
                    text: "Log In",
                    onPressed: () {
                      SellerSignUpPage();
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
                        size: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: SmallText(
                          text: "Sign Up",
                          size: 16,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(children: [
                    Expanded(
                      child: Divider(),
                    ),
                    Text("  Or Login with Biometrics  "),
                    Expanded(
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
                          shape: BoxShape.circle, color: Colors.grey),
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
