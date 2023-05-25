import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/logging_screens.dart/login_page.dart';
import 'package:home_market/widget/button.dart';

import '../../utilities/big_text.dart';
import '../../utilities/colors.dart';
import '../../utilities/small_text.dart';
import '../../widget/dimensions.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Column(
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
                    top: Dimensions.screenHeight * 0.52,
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
                      child: Padding(
                        padding: EdgeInsets.all(Dimensions.screenWidth * 0.075),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const BigText(
                              text: "Order Placed Successfully",
                              size: 30,
                              textAlign: TextAlign.center,
                              color: AppColors.iconColor1,
                            ),
                            SizedBox(
                              height: Dimensions.screenHeight * 0.01,
                            ),
                            const SmallText(
                                text:
                                    "Your order has been confirmed and our dispatch rider will soon be at your doorstep to deliver your goods"),
                            SizedBox(
                              height: Dimensions.screenHeight * 0.04,
                            ),
                            CustomButton(
                              width: Dimensions.screenWidth * 0.9,
                              height: Dimensions.screenHeight * 0.09,
                              text: "Track your order",
                              textsize: 24,
                              onPressed: () {
                                Get.to(() => const LogIn());
                              },
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
