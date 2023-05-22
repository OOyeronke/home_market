import 'dart:io';

import 'package:flutter/material.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:image_picker/image_picker.dart';

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
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  BigText(
                    text: "Profile",
                    color: const Color(0xFF6C757D),
                    size: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      getImageFromGallery();
                    },
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.20,
                      backgroundColor: Colors.white,
                      backgroundImage: imgXFile == null
                          ? null
                          : FileImage(File(imgXFile!.path)),
                      child: imgXFile == null
                          ? Icon(
                              Icons.add_photo_alternate,
                              color: Colors.grey,
                              size: MediaQuery.of(context).size.width * 0.20,
                            )
                          : null,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BigText(
                    text: "MAY VALERIE",
                    size: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SmallText(
                    text: "Edit Profile",
                    color: const Color(0xFF656D4A),
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
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SmallText(
                                text: "Enable Biometric login",
                                size: 16,
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Switch(
                                activeColor: Color(0xFF582F0E),
                                activeTrackColor: Color(0xFF936639),
                                inactiveThumbColor: Color(0xFF936639),
                                inactiveTrackColor: Color(0xFFCED4DA),
                                splashRadius: 50.0,
                                value: loginMode,
                                onChanged: (value) =>
                                    setState(() => loginMode = value),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SmallText(
                                text: "Enable dark mode",
                                size: 16,
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Switch(
                                activeColor: Color(0xFF582F0E),
                                activeTrackColor: Color(0xFF936639),
                                inactiveThumbColor: Color(0xFF936639),
                                inactiveTrackColor: Color(0xFFCED4DA),
                                splashRadius: 50.0,
                                value: colorMode,
                                onChanged: (value) =>
                                    setState(() => colorMode = value),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 400,
                            height: 90,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFC2C5AA)),
                                  child: const Icon(
                                    Icons.person_outlined,
                                    color: Color(0xFF414833),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SmallText(
                                  text: "Profile Information",
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFFADB5BD),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 400,
                            height: 90,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFC2C5AA)),
                                  child: const Icon(
                                    Icons.shopping_cart_rounded,
                                    color: Color(0xFF414833),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SmallText(
                                  text: "Track Order",
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFFADB5BD),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 400,
                            height: 90,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFC2C5AA)),
                                  child: const Icon(
                                    Icons.settings_outlined,
                                    color: Color(0xFF414833),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SmallText(
                                  text: "Settings",
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 80,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFFADB5BD),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 400,
                            height: 90,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Colors.black26,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFC2C5AA)),
                                  child: const Icon(
                                    Icons.logout,
                                    color: Color(0xFF414833),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SmallText(
                                  text: "Log Out",
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 80,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFFADB5BD),
                                )
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
