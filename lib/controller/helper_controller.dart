import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:home_market/utilities/colors.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';

class Helper extends GetxController {
  static String? validateEmail(value) {
    if (value == null || value.isEmpty) return 'Email address is required.';

    return null;
  }

  static String? validatePassword(value) {
    if (value == null || value.isEmpty) return 'Password is required.';

    return null;
  }
  // static String? validatePassword(value){

  // }

  // String? validateEmail(String? formEmail) {
  //   if (formEmail == null || formEmail.isEmpty)
  //     return 'Email address is required.';

  //     return null;
  // }

  static successSnackBar({required title, message}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: AppColors.white,
        backgroundColor: AppColors.green,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 0),
        margin: const EdgeInsets.all(20.0),
        icon:
            const Icon(LineAwesomeIcons.check_circle, color: AppColors.white));
  }

  static warningSnackBar({required title, message}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: AppColors.white,
        backgroundColor: AppColors.green,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 0),
        margin: const EdgeInsets.all(20.0),
        icon: const Icon(LineAwesomeIcons.check_circle, color: Colors.red));
  }

  static errorSnackBar({required title, message}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: AppColors.white,
        backgroundColor: AppColors.green,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 0),
        margin: const EdgeInsets.all(20.0),
        icon: const Icon(LineAwesomeIcons.check_circle, color: Colors.red));
  }

  static modernSnackBar({required title, message}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: AppColors.white,
        backgroundColor: AppColors.green,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 0),
        margin: const EdgeInsets.all(20.0),
        icon: const Icon(LineAwesomeIcons.check_circle, color: Colors.red));
  }
}
