import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/cart/order_success_screen.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/app_icon.dart';
import 'package:home_market/widget/button.dart';

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
                child: BigText(
              text: "Checkout",
              size: 22,
              color: const Color(0xFF6C757D),
            )),
            const SizedBox(
              height: 20,
            ),
            SmallText(
              text: "Address",
              size: 16,
              color: const Color(0xFF343A40),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 350,
              height: 100,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
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
                      const SizedBox(
                        height: 10,
                      ),
                      SmallText(
                        text: "3rd Avenue, Admiralty way Lekki, Lagos",
                        size: 10,
                        color: const Color(0xFFADB5BD),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   width: 5,
                  // ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Radio<DeliveryAddress>(
                      value: DeliveryAddress.home,
                      groupValue: _deliveryAddress,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xFF656D4A)),
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
            const SizedBox(
              height: 5,
            ),
            Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.only(right: 20),
                child: SmallText(
                  text: "Change address",
                  color: const Color(0xFFADB5BD),
                  size: 14,
                )),
            const SizedBox(
              height: 20,
            ),
            SmallText(
              text: "Payment Card",
              size: 16,
              color: const Color(0xFF343A40),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: 350,
              height: 100,
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
                  Column(
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
                        color: const Color(0xFFADB5BD),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Radio<CheckoutOptions>(
                      value: CheckoutOptions.cardPayment,
                      groupValue: _checkoutOptions,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xFF656D4A)),
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
            const SizedBox(
              height: 5,
            ),
            Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.only(right: 20),
                child: SmallText(
                  text: "Change card",
                  color: const Color(0xFFADB5BD),
                  size: 14,
                )),
            const SizedBox(
              height: 20,
            ),
            SmallText(
              text: "Payment on delivery",
              size: 16,
              color: const Color(0xFF343A40),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 5, top: 20, bottom: 20),
              width: 350,
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
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text: "Pay on Delivery",
                        size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SmallText(
                        text: "Choose this option if you prefer to check the",
                        size: 10,
                        color: const Color(0xFFADB5BD),
                      ),
                      SmallText(
                        text: "freshness of the groceries and pay on delivery",
                        size: 10,
                        color: const Color(0xFFADB5BD),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Radio<CheckoutOptions>(
                      value: CheckoutOptions.paymentOnDelivery,
                      groupValue: _checkoutOptions,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xFF656D4A)),
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(
                    text: "Delivery Fee",
                    color: const Color(0xFFADB5BD),
                  ),
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
                  SmallText(
                    text: "New Total",
                    color: const Color(0xFFADB5BD),
                  ),
                  BigText(
                    text: "\$15.00",
                    color: const Color(0xFF6C757D),
                    size: 16,
                  ),
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
