import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/authentication/user_model.dart';
import 'package:home_market/repository/auth_repository/user_repo.dart';
import 'package:home_market/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import '../repository/auth_repository/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  final userRepo = Get.put(UserRepository());

  final isLoading = false.obs;
  final isGoogleLoading = false.obs;
  final isFacebookLoading = false.obs;

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  // Future<void> createUser() async {
  //   try {
  //     isLoading.value = true;
  //     if (!signupFormKey.currentState!.validate()) {
  //       isLoading.value = false;
  //       return;
  //     }

  //     final user = UserModel(
  //       email: email.text.trim(),
  //       password: password.text.trim(),
  //       fullName: fullName.text.trim(),
  //       phoneNo: phoneNo.text.trim(),
  //     );

  //     final auth = AuthenticationRepository.instance;
  //     await auth.createUserWithEmailAndPassword(user.email, user.password);
  //     await UserRepository.instance.createUser(user);
  //     auth.setInitialScreen(auth.firebaseUser);
  //   } catch (e) {
  //     isLoading.value = false;
  //     Get.snackbar('Oh Snap', e.toString(),
  //         snackPosition: SnackPosition.BOTTOM,
  //         duration: const Duration(seconds: 5));
  //   }
  // }

  void createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo) async {
    try {
      await AuthenticationRepository.instance.phoneAuthentication(phoneNo);
    } catch (e) {
      throw e.toString();
    }
  }
}
