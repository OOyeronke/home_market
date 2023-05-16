import 'package:flutter/material.dart';
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
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  TextEditingController businessNameTextEditingController =
      TextEditingController();
  TextEditingController businessAddressTextEditingController =
      TextEditingController();
  TextEditingController govtIdTextEditingController = TextEditingController();

  XFile? imgXFile;
  final ImagePicker imagePicker = ImagePicker();

  getImageFromGallery() async {
    imgXFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imgXFile;
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
              BigText(
                text: "Full Name",
                size: 16,
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
              BigText(
                text: "Email address",
                size: 16,
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
              BigText(
                text: "Business name",
                size: 16,
              ),
              CustomTextField(
                hintText: "Enter your business name",
                textEditingController: businessNameTextEditingController,
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
                textEditingController: businessAddressTextEditingController,
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
                textEditingController: emailTextEditingController,
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
                textEditingController: passwordTextEditingController,
                isObsecre: false,
                enabled: true,
              ),
              const SizedBox(
                height: 10,
              ),
              BigText(
                text: "Full Name",
                size: 16,
              ),
              CustomTextField(
                hintText: "Re-enter your password",
                textEditingController: confirmPasswordTextEditingController,
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
                  Get.to(() => const MainScreen());
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
