import 'dart:io';

import 'package:flutter/material.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:image_picker/image_picker.dart';

import '../../utilities/colors.dart';
import '../../widget/dimensions.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  XFile? imgXFile;
  final ImagePicker imagePicker = ImagePicker();
  bool loginMode = true;
  bool colorMode = true;

  getImageFromGallery() async {
    imgXFile = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imgXFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          right: Dimensions.screenWidth * 0.02,
          left: Dimensions.screenWidth * 0.02,
          top: Dimensions.screenHeight * 0.075,
        ),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const BigText(
                    text: "Profile",
                    color: AppColors.mainColor,
                    size: 30,
                  ),
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
                  const BigText(
                    text: "MAY VALERIE",
                    size: 30,
                  ),
                  SizedBox(
                    height: Dimensions.screenHeight * 0.01,
                  ),
                  const SmallText(
                    text: "Edit Profile",
                    color: AppColors.iconColor1,
                    size: 14,
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color(0xFFE9ECEF),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(
                        right: Dimensions.screenWidth * 0.02,
                        left: Dimensions.screenWidth * 0.02,
                        bottom: Dimensions.screenHeight * 0.075,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SmallText(
                                text: "Enable Biometric login",
                                size: 16,
                              ),
                              SizedBox(
                                width: Dimensions.screenWidth * 0.2,
                              ),
                              Switch(
                                activeColor: const Color(0xFF582F0E),
                                activeTrackColor: AppColors.brown,
                                inactiveThumbColor: AppColors.brown,
                                inactiveTrackColor: AppColors.sliderColor,
                                splashRadius: 50.0,
                                value: loginMode,
                                onChanged: (value) =>
                                    setState(() => loginMode = value),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.001,
                          ),
                          Row(
                            children: [
                              const SmallText(
                                text: "Enable dark mode",
                                size: 16,
                              ),
                              SizedBox(
                                width: Dimensions.screenWidth * 0.3,
                              ),
                              Switch(
                                activeColor: const Color(0xFF582F0E),
                                activeTrackColor: AppColors.brown,
                                inactiveThumbColor: AppColors.brown,
                                inactiveTrackColor: AppColors.sliderColor,
                                splashRadius: 50.0,
                                value: colorMode,
                                onChanged: (value) =>
                                    setState(() => colorMode = value),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.001,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: Dimensions.screenWidth * 0.02,
                              left: Dimensions.screenWidth * 0.05,
                              top: Dimensions.screenHeight * 0.02,
                              bottom: Dimensions.screenHeight * 0.02,
                            ),
                            width: Dimensions.screenWidth * 0.9,
                            height: Dimensions.screenHeight * 0.12,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                    Dimensions.screenWidth * 0.07),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    right: Dimensions.screenWidth * 0.02,
                                    left: Dimensions.screenWidth * 0.02,
                                    top: Dimensions.screenHeight * 0.02,
                                    bottom: Dimensions.screenHeight * 0.02,
                                  ),
                                  width: Dimensions.screenWidth * 0.17,
                                  height: Dimensions.screenHeight * 0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Dimensions.screenWidth * 0.07,
                                      ),
                                      color: AppColors.containerColor),
                                  child: const Icon(
                                    Icons.person_outlined,
                                    color: AppColors.iconBackgroundColor,
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.04,
                                ),
                                const SmallText(
                                  text: "Profile Information",
                                  size: 14,
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.1,
                                ),
                                const Icon(Icons.arrow_forward_ios,
                                    color: AppColors.grey)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.02,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: Dimensions.screenWidth * 0.02,
                              left: Dimensions.screenWidth * 0.05,
                              top: Dimensions.screenHeight * 0.02,
                              bottom: Dimensions.screenHeight * 0.02,
                            ),
                            width: Dimensions.screenWidth * 0.9,
                            height: Dimensions.screenHeight * 0.12,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                    Dimensions.screenWidth * 0.07),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    right: Dimensions.screenWidth * 0.02,
                                    left: Dimensions.screenWidth * 0.02,
                                    top: Dimensions.screenHeight * 0.02,
                                    bottom: Dimensions.screenHeight * 0.02,
                                  ),
                                  width: Dimensions.screenWidth * 0.17,
                                  height: Dimensions.screenHeight * 0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.screenWidth * 0.07),
                                      color: AppColors.containerColor),
                                  child: const Icon(
                                    Icons.shopping_cart_rounded,
                                    color: AppColors.iconBackgroundColor,
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.04,
                                ),
                                const SmallText(
                                  text: "Track Order",
                                  size: 14,
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.22,
                                ),
                                const Icon(Icons.arrow_forward_ios,
                                    color: AppColors.grey)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.02,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: Dimensions.screenWidth * 0.02,
                              left: Dimensions.screenWidth * 0.05,
                              top: Dimensions.screenHeight * 0.02,
                              bottom: Dimensions.screenHeight * 0.02,
                            ),
                            width: Dimensions.screenWidth * 0.9,
                            height: Dimensions.screenHeight * 0.12,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                    Dimensions.screenWidth * 0.07),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    right: Dimensions.screenWidth * 0.02,
                                    left: Dimensions.screenWidth * 0.02,
                                    top: Dimensions.screenHeight * 0.02,
                                    bottom: Dimensions.screenHeight * 0.02,
                                  ),
                                  width: Dimensions.screenWidth * 0.17,
                                  height: Dimensions.screenHeight * 0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.screenWidth * 0.07),
                                      color: AppColors.containerColor),
                                  child: const Icon(
                                    Icons.settings_outlined,
                                    color: AppColors.iconBackgroundColor,
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.04,
                                ),
                                const SmallText(
                                  text: "Settings",
                                  size: 14,
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.3,
                                ),
                                const Icon(Icons.arrow_forward_ios,
                                    color: AppColors.grey)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.screenHeight * 0.02,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              right: Dimensions.screenWidth * 0.02,
                              left: Dimensions.screenWidth * 0.05,
                              top: Dimensions.screenHeight * 0.02,
                              bottom: Dimensions.screenHeight * 0.02,
                            ),
                            width: Dimensions.screenWidth * 0.9,
                            height: Dimensions.screenHeight * 0.12,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                    Dimensions.screenWidth * 0.07),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    right: Dimensions.screenWidth * 0.02,
                                    left: Dimensions.screenWidth * 0.02,
                                    top: Dimensions.screenHeight * 0.02,
                                    bottom: Dimensions.screenHeight * 0.02,
                                  ),
                                  width: Dimensions.screenWidth * 0.17,
                                  height: Dimensions.screenHeight * 0.15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.screenWidth * 0.07),
                                      color: AppColors.containerColor),
                                  child: const Icon(
                                    Icons.logout,
                                    color: AppColors.iconBackgroundColor,
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.04,
                                ),
                                const SmallText(
                                  text: "Log Out",
                                  size: 14,
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.3,
                                ),
                                const Icon(Icons.arrow_forward_ios,
                                    color: AppColors.grey)
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
