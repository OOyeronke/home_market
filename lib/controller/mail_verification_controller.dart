// import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:home_market/repository/auth_repository/authentication_repository.dart';

// class MailVerificationController extends GetxController {
//   late Timer _timer;

//   @override
//   void onInit() {
//     super.onInit();
//     sendVerificationEmail();
//     setTimerForAutoDirect();
//   }

//   Future<void> sendVerificationEmail() async {
//     try {
//       await AuthenticationRepository.instance.sendEmailVerification();
//     } catch (e) {
//       Get.snackbar('Oh Snap', 'Something went wrong. try again');
//       //Helper.errorSnackBar(title: 'Oh Snap', messsge: e.toString());
//     }
//   }

//   void setTimerForAutoDirect() {
//     _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
//       FirebaseAuth.instance.currentUser?.reload();
//       final user = FirebaseAuth.instance.currentUser;
//       if (user!.emailVerified) {
//         timer.cancel();
//         AuthenticationRepository.instance.setInitialScreen(user);
//       }
//     });
//   }

//   void manuallyCheckEmailVerificationStatus() {
//     FirebaseAuth.instance.currentUser?.reload();
//     final user = FirebaseAuth.instance.currentUser;
//     if (user!.emailVerified) {
//       AuthenticationRepository.instance.setInitialScreen(user);
//     }
//   }
// }
