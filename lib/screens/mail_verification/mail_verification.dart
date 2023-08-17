// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:home_market/repository/auth_repository/authentication_repository.dart';
// import 'package:home_market/utilities/small_text.dart';
// import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';

// import '../../controller/mail_verification_controller.dart';
// import '../../utilities/big_text.dart';
// import '../../utilities/colors.dart';

// class MailVerification extends StatelessWidget {
//   const MailVerification({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(MailVerificationController());
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(
//               top: 100.0, left: 20.0, bottom: 20.0, right: 20.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Icon(LineAwesomeIcons.envelope_o, size: 100),
//               const SizedBox(height: 20.0),
//               const BigText(
//                 text: 'Verify your email address',
//                 size: 22,
//               ),
//               const SizedBox(height: 20.0),
//               const SmallText(
//                 text:
//                     'We have just send email verification link on your email. Please check email and click on that link to verify your Email address.',
//                 size: 14,
//               ),
//               const SizedBox(height: 20.0),
//               const SmallText(
//                 text:
//                     'If not auto redirected after verification, click on the Continue button.',
//                 size: 14,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 width: 200,
//                 child: OutlinedButton(
//                   child: const SmallText(
//                     text: 'Continue',
//                     size: 14,
//                   ),
//                   onPressed: () =>
//                       controller.manuallyCheckEmailVerificationStatus(),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30.0,
//               ),
//               TextButton(
//                   onPressed: () => controller.sendVerificationEmail(),
//                   child: const SmallText(
//                     text: 'Resend Email Link',
//                     size: 14,
//                   )),
//               const SizedBox(
//                 height: 30,
//               ),
//               TextButton(
//                   onPressed: () => AuthenticationRepository.instance.logout(),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         LineAwesomeIcons.long_arrow_left,
//                         color: AppColors.mainColor,
//                       ),
//                       SizedBox(
//                         width: 20.0,
//                       ),
//                       SmallText(
//                         text: 'Back to login',
//                         size: 14,
//                       ),
//                     ],
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
