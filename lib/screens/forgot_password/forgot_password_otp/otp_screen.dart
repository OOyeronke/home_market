import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:home_market/controller/otp_controller.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otp;
    var otpController = Get.put(OTPController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const BigText(
            text: 'CODE',
            size: 150,
          ),
          const BigText(
            text: "VERIFICATION",
            size: 18,
          ),
          const SmallText(
            text: "Enter the verification code sent",
          ),
          const SizedBox(
            height: 20.0,
          ),
          OtpTextField(
            mainAxisAlignment: MainAxisAlignment.center,
            numberOfFields: 6,
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            onSubmit: (code) {
              otp = code;
              OTPController.instance.verifyOTP(otp);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  },
                  child: Text("Next")))
        ]),
      ),
    );
  }
}
