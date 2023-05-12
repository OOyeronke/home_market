import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/home_page.dart';
import 'package:home_market/screens/home/main_screen.dart';
import 'package:home_market/screens/logging_screens.dart/login_page.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/custom_text_field.dart';

import '../../widget/button.dart';

class BuyerSignUpPage extends StatefulWidget {
  const BuyerSignUpPage({super.key});

  @override
  State<BuyerSignUpPage> createState() => _BuyerSignUpPageState();
}

class _BuyerSignUpPageState extends State<BuyerSignUpPage> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50.0, left: 20, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: "Sign Up",
                    color: Color(0xFF656D4A),
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Image.asset(
                        "assets/images/lettuce2.png",
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              SmallText(
                  text: "Welcome, fill in your details to start shopping"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              CustomTextField(
                hintText: "Enter your full name",
                textEditingController: nameTextEditingController,
                isObsecre: false,
                enabled: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Email address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              CustomTextField(
                hintText: "Enter your email address",
                textEditingController: emailTextEditingController,
                isObsecre: false,
                enabled: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              CustomTextField(
                hintText: "Enter your password",
                textEditingController: emailTextEditingController,
                isObsecre: false,
                enabled: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Confirm Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              CustomTextField(
                hintText: "Re-enter your password",
                textEditingController: emailTextEditingController,
                isObsecre: false,
                enabled: true,
              ),
              Center(
                child: Image.asset("assets/images/lettuce_down_center.png"),
              ),
              Center(
                  child: CustomButton(
                text: "Sign Up",
                onPressed: () {
                  Get.to(() => MainScreen());
                },
              )),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SmallText(
                  text: "Already have an account?",
                  size: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => LogIn());
                  },
                  child: SmallText(
                    text: "Log In",
                    size: 16,
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
