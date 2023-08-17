import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/authentication/user_model.dart';
import 'package:home_market/controller/profile_controller.dart';
import 'package:home_market/screens/profile/image_utility.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/widget/button.dart';
import 'package:image_picker/image_picker.dart';
import '../../utilities/colors.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/dimensions.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();
  // TextEditingController name = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  XFile? imgXFile;

  final ImagePicker imagePicker = ImagePicker();
  late Image imageFromPreferences;

  bool loginMode = true;

  bool colorMode = true;

  getImageFromGallery() async {
    imgXFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imgXFile;
    });
  }

  loadImageFromPreferences() {
    Utility.getImageFromPreferences().then((img) {
      if (null == img) {
        return;
      }
      imageFromPreferences = Utility.imageFromBase64String(img);
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
    final controller = Get.put(ProfileController());
    Dimensions().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: AppColors.green),
          title: const BigText(
            text: "Edit Profile",
            color: AppColors.green,
            size: 20,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              right: Dimensions.screenWidth * 0.02,
              left: Dimensions.screenWidth * 0.02,
              top: Dimensions.screenHeight * 0.02,
            ),
            child: FutureBuilder(
                future: controller.getUserData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      UserModel user = snapshot.data as UserModel;
                      final email = TextEditingController(text: user.email);
                      final fullName =
                          TextEditingController(text: user.fullName);
                      final password =
                          TextEditingController(text: user.password);
                      final phoneNo = TextEditingController(text: user.phoneNo);
                      return Column(
                        children: [
                          SizedBox(
                            height: Dimensions.screenHeight * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              getImageFromGallery();
                            },
                            child: CircleAvatar(
                              radius: Dimensions.screenWidth * 0.20,
                              backgroundColor: Colors.white,
                              backgroundImage: imgXFile == null
                                  ? null
                                  : FileImage(File(imgXFile!.path)),
                              child: imgXFile == null
                                  ? Icon(
                                      Icons.add_photo_alternate,
                                      color: Colors.grey,
                                      size: Dimensions.screenWidth * 0.20,
                                    )
                                  : null,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.02,
                          ),
                          Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BigText(
                                text: "Full Name",
                                size: 16,
                              ),
                              // TextFormField(
                              //   initialValue: user.fullName,
                              //   controller: controller.fullName,
                              //   decoration: const InputDecoration(
                              //     label: Text("Enter your full name"),
                              //   ),
                              // ),
                              CustomTextField(
                                hintText: "Enter your full name",
                                controller: fullName,
                                //controller: controller.fullName,
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
                              // TextFormField(
                              //   initialValue: user.email,
                              //   controller: controller.email,
                              //   decoration: const InputDecoration(
                              //     label: Text("Enter your full name"),
                              //   ),
                              // ),
                              CustomTextField(
                                hintText: "Enter your email address",
                                controller: email,
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
                              // TextFormField(
                              //   initialValue: user.password,
                              //   controller: controller.password,
                              //   decoration: const InputDecoration(
                              //     label: Text("Enter your full name"),
                              //   ),
                              // ),
                              CustomTextField(
                                hintText: "Enter your password",
                                controller: password,
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
                                controller: confirmPassword,
                                isObsecre: _isHidden,
                                enabled: true,
                                suffIcon1: Icons.visibility,
                                suffIcon2: Icons.visibility_off,
                                onPressed: () {
                                  _toggleConfirmPasswordView();
                                },
                              ),
                              SizedBox(
                                height: Dimensions.screenHeight * 0.02,
                              ),
                              Center(
                                  child: CustomButton(
                                text: "Save",
                                onPressed: () async {
                                  final userData = UserModel(
                                    email: email.text.trim(),
                                    password: password.text.trim(),
                                    fullName: fullName.text.trim(),
                                    phoneNo: phoneNo.text.trim(),
                                  );
                                  await controller.updateRecord(userData);
                                },
                                height: Dimensions.screenHeight * 0.075,
                              ))
                            ],
                          ))
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else {
                      return const Center(
                        child: Text('Something went wrong'),
                      );
                    }
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ));
  }
}
