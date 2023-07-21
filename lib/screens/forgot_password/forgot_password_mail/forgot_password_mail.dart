import 'package:flutter/material.dart';
import 'package:home_market/screens/logging_screens.dart/form_header_widget.dart';

class ForgotPasswordMail extends StatelessWidget {
  const ForgotPasswordMail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const FormHeaderWidget(
                image: "assets\images\cabbage_curve.png",
                title: "Forget Password",
                subTitle:
                    "Select one of the options given below to reset your password.",
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Email"),
                      hintText: "Email",
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Next"),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
