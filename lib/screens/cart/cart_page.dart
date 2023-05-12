import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/account/payment_page.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/button.dart';

import '../../widget/app_icon.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppIcon(
              icon: Icons.arrow_back,
              backgroundColor: Colors.white,
            ),
            Center(
              child: Column(
                children: [
                  BigText(text: "Cart"),
                  SmallText(text: "3 items in the cart"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  children: [
                    BigText(
                      text: "Tap to apply discount",
                      size: 20,
                      color: Colors.white,
                    ),
                    SmallText(
                      text: "You get 15% off all orders that are above \$200",
                      color: Colors.white,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(10),
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black26,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Image.asset("assets/images/lettuce2.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Lettuce",
                          size: 20,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SmallText(text: "\$21.99"),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            AppIcon(
                              icon: Icons.remove,
                              backgroundColor: Colors.grey,
                              size: 22,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SmallText(text: "1"),
                            const SizedBox(
                              width: 5,
                            ),
                            AppIcon(
                              icon: Icons.add,
                              backgroundColor: Colors.black,
                              size: 22,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    AppIcon(
                      icon: Icons.cancel,
                      backgroundColor: Colors.white,
                    ),
                  ],
                )),
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(
                      text: "Total",
                      size: 14,
                    ),
                    BigText(
                      text: "\$1500",
                      size: 20,
                    ),
                  ],
                ),
                CustomButton(
                    text: "Checkout",
                    width: 200,
                    height: 60,
                    onPressed: () {
                      Get.to(() => PaymentPage());
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
