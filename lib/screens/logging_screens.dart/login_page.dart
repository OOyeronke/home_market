import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:home_market/controller/helper_controller.dart';
import 'package:home_market/controller/login_controller.dart';
import 'package:home_market/screens/logging_screens.dart/sign_up_screen.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/button.dart';
import 'package:home_market/widget/custom_text_field.dart';
import '../../utilities/colors.dart';
import '../../widget/dimensions.dart';
import '../forgot_password/forgot_password_options/forgot_password_model_bottom_sheet.dart';
import '../home/root_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isHidden = true;

  validateForm() {
    if (emailTextEditingController.text.isNotEmpty &&
        passwordTextEditingController.text.isNotEmpty) {
      loginNow();
    } else {
      Fluttertoast.showToast(msg: "Please provide email and password");
    }
  }

  loginNow() async {}
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
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
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BigText(
                      text: "Email address",
                      size: 16,
                    ),
                    CustomTextField(
                      hintText: "Enter your email address",
                      controller: controller.email,
                      validator: Helper.validateEmail,
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
                      controller: controller.password,
                      validator: (value) {
                        if (value!.isEmpty) return 'Enter your password';
                        return null;
                      },
                      //    icon: controller.showPassword.value
                      //     ? const Icon(LineAwesomeIcons.eye)
                      //     : const Icon(LineAwesomeIcons.eye_slash),
                      // onPressed: () => controller.showPassword.value = !controller.showPassword.value,
                      isObsecre: _isHidden,
                      enabled: true,
                      suffIcon1: Icons.visibility,
                      suffIcon2: Icons.visibility_off,
                      onPressed: () {
                        _togglePasswordView();
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        ForgotPasswordScreen.buildShowModalBottomSheet(context);
                      },
                      child: Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.only(
                              right: Dimensions.screenWidth * 0.04),
                          child: const SmallText(
                            text: "Forgot your password?",
                            color: AppColors.iconColor1,
                            size: 13,
                          )),
                    ),
                    SizedBox(
                      height: Dimensions.screenHeight * 0.02,
                    ),
                    // Center(
                    //     child: CustomButton(
                    //   text: "Log In",
                    //   height: Dimensions.screenHeight * 0.08,
                    //   width: Dimensions.screenHeight * 0.7,
                    //   onPressed: () {
                    //     Get.to(() => const RootPage());
                    //   },
                    // )),
                    SizedBox(
                      height: Dimensions.screenHeight * 0.02,
                    ),
                    Center(
                        child: CustomButton(
                      text: "Log In",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          LoginController.instance.login();

                          Get.to(() => const RootPage());
                        }
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
