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
                text: "Welcome, fill in your details to start shopping",
                color: Color(0xFF6C757D),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Full Name",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF343A40)),
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
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF343A40)),
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
                "Business Name",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF343A40)),
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
              const Text(
                "Business address",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF343A40)),
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
              const Text(
                "Govt Id",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF343A40)),
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
              const Text(
                "Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF343A40)),
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
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF343A40)),
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
                  color: Color(0xFF6C757D),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => LogIn());
                  },
                  child: SmallText(
                    text: "Log In",
                    size: 16,
                    color: Color(0xFF656D4A),
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
