import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/logging_screens.dart/login_page.dart';
import 'package:home_market/widget/button.dart';

import '../../utilities/big_text.dart';
import '../../utilities/small_text.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Image.asset(
                    "assets/images/order_success.png",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0.0,
                      left: 0.0,
                      top: 400.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.1),
                              Colors.white,
                              Colors.white,
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(
                              text: "Order Placed",
                              color: const Color(0xFF656D4A),
                            ),
                            BigText(
                              text: "Successfully",
                              color: Color(0xFF656D4A),
                            ),
                            SmallText(
                                text:
                                    "Your order has been confirmed and our dispatch rider will"),
                            SmallText(
                                text:
                                    "soon be at your doorstep to deliver your goods"),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              width: 300,
                              height: 65,
                              text: "Track your order",
                              textsize: 24,
                              onPressed: () {
                                Get.to(() => LogIn());
                              },
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
