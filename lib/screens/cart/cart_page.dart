import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/account/payment_page.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/button.dart';
import 'package:home_market/widget/dimensions.dart';

import '../../utilities/colors.dart';
import '../../widget/app_icon.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: Dimensions.screenHeight * 0.07,
          right: Dimensions.screenWidth * 0.05,
          left: Dimensions.screenWidth * 0.05,
        ),
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
            const Center(
              child: Column(
                children: [
                  BigText(
                    text: "Cart",
                    color: AppColors.mainColor,
                  ),
                  SmallText(
                    text: "3 items in the cart",
                    color: AppColors.grey,
                    size: 14,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.03,
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.screenHeight * 0.03,
                right: Dimensions.screenWidth * 0.05,
                left: Dimensions.screenWidth * 0.05,
                bottom: Dimensions.screenHeight * 0.03,
              ),
              width: Dimensions.screenWidth * 0.9,
              height: Dimensions.screenHeight * 0.13,
              decoration: BoxDecoration(
                color: AppColors.brown,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
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
            SizedBox(
              height: Dimensions.screenHeight * 0.02,
            ),
            Container(
                padding: EdgeInsets.only(
                  top: Dimensions.screenHeight * 0.02,
                  right: Dimensions.screenWidth * 0.05,
                  left: Dimensions.screenWidth * 0.05,
                  bottom: Dimensions.screenHeight * 0.005,
                ),
                width: Dimensions.screenWidth * 0.9,
                height: Dimensions.screenHeight * 0.13,
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
                    SizedBox(
                      width: Dimensions.screenWidth * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BigText(
                          text: "Lettuce",
                          size: 20,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(
                          height: Dimensions.screenHeight * 0.002,
                        ),
                        const SmallText(
                          text: "\$21.99",
                        ),
                        SizedBox(
                          height: Dimensions.screenHeight * 0.002,
                        ),
                        Row(
                          children: [
                            AppIcon(
                              width: Dimensions.screenWidth * 0.07,
                              height: Dimensions.screenHeight * 0.05,
                              icon: Icons.remove,
                              backgroundColor: AppColors.containerColor,
                              iconColor: AppColors.iconBackgroundColor,
                            ),
                            SizedBox(
                              width: Dimensions.screenWidth * 0.02,
                            ),
                            const BigText(
                              text: "1",
                              color: AppColors.black,
                              size: 14,
                            ),
                            SizedBox(
                              width: Dimensions.screenWidth * 0.02,
                            ),
                            AppIcon(
                              width: Dimensions.screenWidth * 0.07,
                              height: Dimensions.screenHeight * 0.05,
                              icon: Icons.add,
                              backgroundColor: AppColors.iconColor1,
                              iconColor: AppColors.containerColor,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: Dimensions.screenWidth * 0.3,
                    ),
                    AppIcon(
                      icon: Icons.clear,
                      backgroundColor: Colors.white,
                    ),
                  ],
                )),
            SizedBox(
              height: Dimensions.screenHeight * 0.35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(
                      text: "Total",
                      size: 14,
                      color: AppColors.grey,
                    ),
                    BigText(
                      text: "\$1500",
                      size: 20,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
                CustomButton(
                    text: "Checkout",
                    width: Dimensions.screenWidth * 0.6,
                    height: Dimensions.screenHeight * 0.08,
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
