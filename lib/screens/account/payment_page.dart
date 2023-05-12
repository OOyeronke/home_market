import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/cart/order_success_screen.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/app_icon.dart';
import 'package:home_market/widget/button.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppIcon(
              icon: Icons.arrow_back,
              backgroundColor: Colors.white,
            ),
            Center(
                child: BigText(
              text: "Checkout",
              size: 22,
            )),
            SmallText(
              text: "Address",
              size: 18,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 300,
              height: 100,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.location_city),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text: "Home",
                        size: 18,
                      ),
                      SmallText(
                        text: "3rd Avenue, Admiralty way Lekki, Lagos",
                        size: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 210),
              child: Column(
                children: [
                  SmallText(text: "Change address"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmallText(
              text: "Payment Card",
              size: 18,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 300,
              height: 100,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.card_giftcard),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text: "Master Card",
                        size: 18,
                      ),
                      SmallText(
                        text: "**** **** 4567 5689",
                        size: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SmallText(text: "Change card"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmallText(
              text: "Payment on delivery",
              size: 18,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 300,
              height: 100,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_bag),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text: "Pay on Delivery",
                        size: 18,
                      ),
                      SmallText(
                        text: "Choose this option if you prefer to check the",
                        size: 10,
                      ),
                      SmallText(
                        text: "freshness of the groceries and py on delivery",
                        size: 10,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: "Delivery Fee"),
                  SmallText(text: "\$5"),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: "New Total"),
                  SmallText(text: "\$15.00"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                height: 60,
                text: "Confirm Order",
                onPressed: () {
                  Get.to(() => OrderSuccessScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
