import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:home_market/screens/forgot_password/forgot_password_mail/forgot_password_mail.dart';

import '../../../utilities/big_text.dart';
import '../../../utilities/small_text.dart';
import 'forgot_password_btn_widget.dart';

class ForgotPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              text: "Make Selection!",
              size: 20,
            ),
            SmallText(
              text:
                  "Select one of the options given below to reset your password",
              size: 14,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgotPasswordMail());
              },
              subTitle: 'Reset via Mail Verification',
              title: 'E-Mail',
            ),
            SizedBox(
              height: 20.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const OTPScreen());
              },
              subTitle: 'Reset via Phone Verification',
              title: 'Phone No',
            ),
          ],
        ),
      ),
    );
  }
}
