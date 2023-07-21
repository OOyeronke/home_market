import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:home_market/repository/auth_repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  // Future<void> loginUser(String email, String password) async {
  //   String? error = await AuthenticationRepository.instance
  //       .loginWithEmailAndPassword(email, password);
  //   if (error != null) {
  //     Get.showSnackbar(GetSnackBar(message: error.toString()));
  //   }
  // }
}
