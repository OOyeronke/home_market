import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/cart/order_success_screen.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/app_icon.dart';
import 'package:home_market/widget/button.dart';

import '../../utilities/colors.dart';
import '../../widget/dimensions.dart';

enum CheckoutOptions { cardPayment, paymentOnDelivery }

enum DeliveryAddress { home }

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  CheckoutOptions? _checkoutOptions;
  DeliveryAddress? _deliveryAddress;

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
                child: BigText(
              text: "Checkout",
              size: 22,
              color: AppColors.mainColor,
            )),
            SizedBox(height: Dimensions.screenHeight * 0.03),
            const SmallText(
              text: "Address",
              size: 16,
              color: AppColors.textColor,
            ),
            SizedBox(height: Dimensions.screenHeight * 0.02),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.screenHeight * 0.03,
                  right: Dimensions.screenWidth * 0.07,
                  left: Dimensions.screenWidth * 0.07,
                  bottom: Dimensions.screenHeight * 0.03),
              width: Dimensions.screenWidth * 0.9,
              height: Dimensions.screenHeight * 0.12,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  SizedBox(width: Dimensions.screenWidth * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text: "Home",
                        size: 18,
                      ),
                      SizedBox(height: Dimensions.screenHeight * 0.01),
                      SmallText(
                        text: "3rd Avenue, Admiralty way Lekki, Lagos",
                        size: 10,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Radio<DeliveryAddress>(
                      value: DeliveryAddress.home,
                      groupValue: _deliveryAddress,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.green),
                      onChanged: (val) {
                        setState(() {
                          _deliveryAddress = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.screenHeight * 0.01),
            Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: Dimensions.screenWidth * 0.03),
                child: const SmallText(
                  text: "Change address",
                  color: AppColors.grey,
                  size: 14,
                )),
            SizedBox(height: Dimensions.screenHeight * 0.03),
            const SmallText(
              text: "Payment Card",
              size: 16,
              color: AppColors.textColor,
            ),
            SizedBox(height: Dimensions.screenHeight * 0.02),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.screenHeight * 0.03,
                right: Dimensions.screenWidth * 0.05,
                left: Dimensions.screenWidth * 0.07,
                bottom: Dimensions.screenHeight * 0.03,
              ),
              width: Dimensions.screenWidth * 0.9,
              height: Dimensions.screenHeight * 0.12,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Image.asset("assets/images/mastercard.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text: "Master Card",
                        size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SmallText(
                        text: "**** **** 4567 5689",
                        size: 10,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  SizedBox(width: Dimensions.screenWidth * 0.15),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Radio<CheckoutOptions>(
                      value: CheckoutOptions.cardPayment,
                      groupValue: _checkoutOptions,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.iconColor1),
                      onChanged: (val) {
                        setState(() {
                          _checkoutOptions = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.screenHeight * 0.01),
            Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: Dimensions.screenWidth * 0.03),
                child: SmallText(
                  text: "Change card",
                  color: AppColors.grey,
                  size: 14,
                )),
            SizedBox(height: Dimensions.screenHeight * 0.03),
            SmallText(
              text: "Payment on delivery",
              size: 16,
              color: AppColors.textColor,
            ),
            SizedBox(height: Dimensions.screenHeight * 0.02),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.screenHeight * 0.02,
                right: Dimensions.screenWidth * 0.0001,
                left: Dimensions.screenWidth * 0.05,
                bottom: Dimensions.screenHeight * 0.02,
              ),
              width: Dimensions.screenWidth * 0.9,
              height: Dimensions.screenHeight * 0.12,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.shopping_bag),
                  SizedBox(width: Dimensions.screenWidth * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SmallText(
                        text: "Pay on Delivery",
                        size: 18,
                      ),
                      SizedBox(height: Dimensions.screenHeight * 0.01),
                      const SmallText(
                        text: "Choose this option if you prefer to check the",
                        size: 10,
                        color: AppColors.grey,
                      ),
                      const SmallText(
                        text: "freshness of the groceries and pay on delivery",
                        size: 10,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Radio<CheckoutOptions>(
                      value: CheckoutOptions.paymentOnDelivery,
                      groupValue: _checkoutOptions,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.iconColor1),
                      onChanged: (val) {
                        setState(() {
                          _checkoutOptions = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.screenWidth * 0.04,
                right: Dimensions.screenWidth * 0.04,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(
                    text: "Delivery Fee",
                    size: 13,
                    color: AppColors.grey,
                  ),
                  SmallText(
                    text: "\$5",
                    size: 13,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.005,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.screenWidth * 0.04,
                right: Dimensions.screenWidth * 0.04,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(
                    text: "New Total",
                    size: 13,
                    color: AppColors.grey,
                  ),
                  BigText(
                    text: "\$15.00",
                    color: AppColors.mainColor,
                    size: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.04,
            ),
            Center(
              child: CustomButton(
                height: Dimensions.screenHeight * 0.075,
                text: "Confirm Order",
                onPressed: () {
                  Get.to(() => const OrderSuccessScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
