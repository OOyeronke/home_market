import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/main_screen.dart';
import 'package:home_market/screens/logging_screens.dart/login_page.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/custom_text_field.dart';

import '../../utilities/colors.dart';
import '../../widget/button.dart';
import '../../widget/dimensions.dart';
import '../../widget/loading_dialog_widget.dart';

class BuyerSignUpPage extends StatefulWidget {
  const BuyerSignUpPage({super.key});

  @override
  State<BuyerSignUpPage> createState() => _BuyerSignUpPageState();
}

class _BuyerSignUpPageState extends State<BuyerSignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  formValidation() {
    if (name.text.isEmpty) {
      Fluttertoast.showToast(msg: "Type in your name");
    } else if (email.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Type in your email address",
      );
    } else if (password.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Type in your password",
      );
    } else if (password.text.length < 6) {
      Fluttertoast.showToast(
        msg: "Password cannot be less than six characters",
      );
    } else if (confirmPassword.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Confirm Password",
      );
    } else if (confirmPassword.text.length < 6) {
      Fluttertoast.showToast(
        msg: "Password cannot be less than six characters",
      );
    } else if (password.text != confirmPassword.text) {
      Fluttertoast.showToast(
        msg: "Password and Confirm Password do not match",
      );
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
    }
  }

  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _toggleConfirmPasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: Dimensions.screenHeight * 0.05,
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
                    text: "Sign Up",
                    color: AppColors.iconColor1,
                  ),
                  Image.asset(
                    "assets/images/lettuce_side.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SmallText(
                text: "Welcome, fill in your details to start shopping",
              ),
              SizedBox(
                height: Dimensions.screenHeight * 0.02,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BigText(
                        text: "Full Name",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your full name",
                        textEditingController: name,
                        isObsecre: false,
                        enabled: true,
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.02,
                      ),
                      const BigText(
                        text: "Email address",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your email address",
                        textEditingController: email,
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
                        textEditingController: password,
                        isObsecre: _isHidden,
                        enabled: true,
                        suffIcon1: Icons.visibility,
                        suffIcon2: Icons.visibility_off,
                        onPressed: () {
                          _togglePasswordView();
                        },
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.02,
                      ),
                      const BigText(
                        text: "Confirm Password",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Re-enter your password",
                        textEditingController: confirmPassword,
                        isObsecre: _isHidden,
                        enabled: true,
                        suffIcon1: Icons.visibility,
                        suffIcon2: Icons.visibility_off,
                        onPressed: () {
                          _toggleConfirmPasswordView();
                        },
                      ),
                    ],
                  )),
              Center(
                child: Image.asset("assets/images/lettuce_down_center.png"),
              ),
              Center(
                  child: CustomButton(
                text: "Sign Up",
                onPressed: () {
                  formValidation();
                },
              )),
              SizedBox(
                height: Dimensions.screenHeight * 0.02,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
