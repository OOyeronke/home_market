import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/main_screen.dart';
import '../../utilities/big_text.dart';
import '../../utilities/small_text.dart';
import '../../widget/button.dart';
import '../../widget/custom_text_field.dart';
import 'login_page.dart';
import 'package:image_picker/image_picker.dart';

class SellerSignUpPage extends StatefulWidget {
  const SellerSignUpPage({super.key});

  @override
  State<SellerSignUpPage> createState() => _SellerSignUpPageState();
}

class _SellerSignUpPageState extends State<SellerSignUpPage> {
  // TextEditingController emailTextEditingController = TextEditingController();
  // TextEditingController passwordTextEditingController = TextEditingController();
  // TextEditingController nameTextEditingController = TextEditingController();
  // TextEditingController confirmPasswordTextEditingController =
  //     TextEditingController();
  // TextEditingController businessNameTextEditingController =
  //     TextEditingController();
  // TextEditingController businessAddressTextEditingController =
  //     TextEditingController();
  // TextEditingController govtIdTextEditingController = TextEditingController();
  // GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController businessName = TextEditingController();
  TextEditingController businessAddress = TextEditingController();
  TextEditingController govtId = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  formValidation() {
    if (name.text.isEmpty) {
      Fluttertoast.showToast(msg: "Type in your name");
    } else if (email.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Type in your email address",
      );
    } else if (businessAddress.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Type in your business address",
      );
    } else if (businessName.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Type in your business name",
      );
    } else if (govtId.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "Type in your govtId",
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

  XFile? imgXFile;
  final ImagePicker imagePicker = ImagePicker();

  getImageFromGallery() async {
    imgXFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imgXFile;
    });
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
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40.0, left: 20, right: 10),
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
                  Image.asset(
                    "assets/images/lettuce_side.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SmallText(
                text: "Welcome, fill in your details to start shopping",
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Full Name",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your full name",
                        textEditingController: name,
                        isObsecre: false,
                        enabled: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BigText(
                        text: "Email address",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your email address",
                        textEditingController: email,
                        isObsecre: false,
                        enabled: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BigText(
                        text: "Business name",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your business name",
                        textEditingController: businessName,
                        isObsecre: false,
                        enabled: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BigText(
                        text: "Business address",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your business address",
                        textEditingController: businessAddress,
                        isObsecre: false,
                        enabled: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BigText(
                        text: "Govt Id",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Upload your govt Id",
                        textEditingController: govtId,
                        isObsecre: false,
                        enabled: true,
                        iconData: Icons.attach_file,
                        onPressed: () {
                          getImageFromGallery();
                        },
                      ),
                      // Container(
                      //   width: 300,
                      //   height: 50,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     border: Border.all(
                      //       color: Colors.grey,
                      //     ),
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(20),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),
                      BigText(
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
                      const SizedBox(
                        height: 10,
                      ),
                      BigText(
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
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SmallText(
                  text: "Already have an account?",
                  size: 14,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const LogIn());
                  },
                  child: SmallText(
                    text: "Log In",
                    size: 14,
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
