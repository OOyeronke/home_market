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
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: AppIcon(
                icon: Icons.arrow_back_ios,
                iconSize: 18,
              ),
            ),
            Center(
              child: Column(
                children: [
                  BigText(
                    text: "Cart",
                    color: const Color(0xFF6C757D),
                  ),
                  SmallText(
                    text: "3 items in the cart",
                    color: const Color(0xFFADB5BD),
                    size: 14,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF936639),
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
                    const SizedBox(
                      height: 10,
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
                width: 350,
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
                    Image.asset("assets/images/lettu.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Lettuce",
                          size: 20,
                          color: const Color(0xFF6C757D),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SmallText(
                          text: "\$21.99",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            AppIcon(
                              icon: Icons.remove,
                              backgroundColor: const Color(0xFFC2C5AA),
                              iconColor: const Color(0xFF414833),
                              size: 26,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            // Text("1",),
                            BigText(
                              text: "1",
                              color: const Color(0xFF000000),
                              size: 14,
                            ),
                            const SizedBox(width: 10),
                            AppIcon(
                              icon: Icons.add,
                              backgroundColor: const Color(0xFF656D4A),
                              iconColor: const Color(0xFFC2C5AA),
                              size: 26,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    AppIcon(
                      icon: Icons.clear,
                      backgroundColor: Colors.white,
                    ),
                  ],
                )),
            const SizedBox(
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
                      color: const Color(0xFFADB5BD),
                    ),
                    BigText(
                      text: "\$1500",
                      size: 20,
                      color: const Color(0xFF6C757D),
                    ),
                  ],
                ),
                CustomButton(
                    text: "Checkout",
                    width: 200,
                    height: 60,
                    textsize: 20,
                    onPressed: () {
                      Get.to(() => const PaymentPage());
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
