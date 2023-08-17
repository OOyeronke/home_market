import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:home_market/repository/auth_repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final showPassword = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final isLoading = false.obs;
  final isGoogleLoading = false.obs;
  final isFacebookLoading = false.obs;

  // Future<void> login() async {
  //   try {
  //     isLoading.value = true;
  //     if (!loginFormKey.currentState!.validate()) {
  //       isLoading.value = false;
  //       return;
  //     }
  //     final auth = AuthenticationRepository.instance;
  //     await auth.loginWithEmailAndPassword(
  //         email.text.trim(), password.text.trim());
  //     auth.setInitialScreen(auth.firebaseUser);
  //   } catch (e) {
  //     isLoading.value = false;
  //     Get.snackbar('Oh Snap', 'Something went wrong. try again');
  //     //Helper.errorSnackBar(title: 'Oh Snap', message: e.toString());
  //   }
  // }

  // Future<void> loginUser(String email, String password) async {
  //   String? error = await AuthenticationRepository.instance
  //       .loginWithEmailAndPassword(email, password);
  //   if (error != null) {
  //     Get.showSnackbar(GetSnackBar(message: error.toString()));
  //   }
  //}

  Future<void> login() async {
    String? error = await AuthenticationRepository.instance
        .loginWithEmailAndPassword(email.text.trim(), password.text.trim());
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }
}
//}
