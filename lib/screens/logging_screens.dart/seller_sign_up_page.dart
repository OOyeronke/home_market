import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_market/controller/signup_controller.dart';
import 'package:home_market/utilities/colors.dart';
import 'package:home_market/widget/primary_button.dart';
import '../../authentication/user_model.dart';
import '../../utilities/big_text.dart';
import '../../utilities/small_text.dart';
import '../../widget/button.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/dimensions.dart';
import '../forgot_password/forgot_password_otp/otp_screen.dart';
import 'login_page.dart';
import 'package:image_picker/image_picker.dart';

class SellerSignUpPage extends StatefulWidget {
  const SellerSignUpPage({super.key});

  @override
  State<SellerSignUpPage> createState() => _SellerSignUpPageState();
}

class _SellerSignUpPageState extends State<SellerSignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController businessName = TextEditingController();
  TextEditingController businessAddress = TextEditingController();
  TextEditingController govtId = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // formValidation() {
  //   if (name.text.isEmpty) {
  //     Fluttertoast.showToast(msg: "Type in your name");
  //   } else if (email.text.isEmpty) {
  //     Fluttertoast.showToast(
  //       msg: "Type in your email address",
  //     );
  //   } else if (businessAddress.text.isEmpty) {
  //     Fluttertoast.showToast(
  //       msg: "Type in your business address",
  //     );
  //   } else if (businessName.text.isEmpty) {
  //     Fluttertoast.showToast(
  //       msg: "Type in your business name",
  //     );
  //   } else if (govtId.text.isEmpty) {
  //     Fluttertoast.showToast(
  //       msg: "Type in your govtId",
  //     );
  //   } else if (password.text.isEmpty) {
  //     Fluttertoast.showToast(
  //       msg: "Type in your password",
  //     );
  //   } else if (password.text.length < 6) {
  //     Fluttertoast.showToast(
  //       msg: "Password cannot be less than six characters",
  //     );
  //   } else if (confirmPassword.text.isEmpty) {
  //     Fluttertoast.showToast(
  //       msg: "Confirm Password",
  //     );
  //   } else if (confirmPassword.text.length < 6) {
  //     Fluttertoast.showToast(
  //       msg: "Password cannot be less than six characters",
  //     );
  //   } else if (password.text != confirmPassword.text) {
  //     Fluttertoast.showToast(
  //       msg: "Password and Confirm Password do not match",
  //     );
  //   } else {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => const RootPage()));
  //   }
  // }

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
    final controller = Get.put(SignUpController());
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
                        controller: controller.fullName,
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
                        //validator: Helper.validateEmail,
                        controller: controller.email,
                        isObsecre: false,
                        enabled: true,
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.02,
                      ),
                      const BigText(
                        text: "Phone Number",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your phone number",
                        controller: controller.phoneNo,
                        isObsecre: false,
                        enabled: true,
                        //label: Text('Phone Number'),
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.02,
                      ),
                      const BigText(
                        text: "Business name",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your business name",
                        controller: businessName,
                        isObsecre: false,
                        enabled: true,
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.02,
                      ),
                      const BigText(
                        text: "Business address",
                        size: 16,
                      ),
                      CustomTextField(
                        hintText: "Enter your business address",
                        controller: businessAddress,
                        isObsecre: false,
                        enabled: true,
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.02,
                      ),
                      const BigText(
                        text: "Govt Id",
                        size: 16,
                      ),
                      Container(
                        height: Dimensions.screenHeight * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.grey, width: 2),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          top: Dimensions.screenHeight * 0.005,
                          bottom: Dimensions.screenHeight * 0.005,
                          left: Dimensions.screenHeight * 0.06,
                          right: Dimensions.screenHeight * 0.005,
                        ),
                        margin: EdgeInsets.only(
                          top: Dimensions.screenHeight * 0.005,
                          bottom: Dimensions.screenHeight * 0.005,
                          left: Dimensions.screenHeight * 0.005,
                          right: Dimensions.screenHeight * 0.005,
                        ),
                        child: TextFormField(
                          //controller: govtId,
                          obscureText: false,
                          enabled: true,
                          cursorColor: AppColors.green,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Upload your govt Id",
                              hintStyle: GoogleFonts.inter(
                                color: AppColors.grey,
                                fontSize: 15,
                              ),
                              suffixIcon: GestureDetector(
                                child: Icon(Icons.attach_file),
                                onTap: () {
                                  getImageFromGallery();
                                },
                              )),
                        ),
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
                    ],
                  )),
              Center(
                child: Image.asset("assets/images/lettuce_down_center.png"),
              ),

              // Obx(() => TPrimaryButton(
              //       isLoading: controller.isLoading.value ? true : false,
              //       onPressed: controller.isFacebookLoading.value ||
              //               controller.isGoogleLoading.value
              //           ? () {}
              //           : controller.isLoading.value
              //               ? () {}
              //               : () => controller.createUser(),
              //       text: 'SignUp',
              //     )),

              Center(
                  child: CustomButton(
                text: "Sign Up",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // final user = UserModel(
                    //     email: controller.email.text.trim(),
                    //     fullName: controller.fullName.text.trim(),
                    //     phoneNo: controller.phoneNo.text.trim(),
                    //     password: controller.password.text.trim());
                    // SignUpController.instance.createUser(user);
                    SignUpController.instance.registerUser(
                      controller.email.text.trim(),
                      controller.password.text.trim(),
                    );

                    Get.to(() => const OTPScreen());
                  }
                },
              )),

              // Center(CustomButton(
              //   onPressed: () {
              //     if (_formKey.currentState!.validate()) {
              //       SignUpController.instance
              //           .phoneAuthentication(controller.phoneNo.text.trim());
              //       Get.to(() => const OTPScreen());
              //       SignUpController.instance.registerUser(
              //           controller.email.text.trim(),
              //           controller.password.text.trim());
              //     }
              //     formValidation();
              //     final user = UserModel(
              //         email: controller.email.text.trim(),
              //         fullName: controller.fullName.text.trim(),
              //         phoneNo: controller.phoneNo.text.trim(),
              //         password: controller.password.text.trim());
              //     SignUpController.instance.createUser(user);
              //     SignUpController.instance.registerUser(
              //       controller.email.text.trim(),
              //       controller.password.text.trim(),
              //     );
              //   },
              //   text: 'SignUp',
              // )),
              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       if (_formKey.currentState!.validate()) {
              //         //SignUpController.instance.createUser();
              //         // SignUpController.instance.registerUser(
              //         //     controller.email.text.trim(),
              //         //     controller.password.text.trim());
              //         SignUpController.instance
              //             .phoneAuthentication(controller.phoneNo.text.trim());
              //         Get.to(() => const OTPScreen());
              //       }
              //     },
              //     child: Text('SignUp'),
              //   ),
              // ),
              SizedBox(
                height: Dimensions.screenHeight * 0.04,
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
              SizedBox(
                height: Dimensions.screenHeight * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
