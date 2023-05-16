//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/cart/cart_page.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/app_column.dart';
import 'package:home_market/widget/button.dart';

import '../../widget/app_icon.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String image2;
  final String image3;
  final String text1;
  final String text2;
  final String price1;
  final String price2;
  const ProductItem({
    super.key,
    required this.image,
    required this.image2,
    required this.image3,
    required this.text2,
    required this.text1,
    required this.price1,
    required this.price2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: 400,
              height: 350,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                bottom: 0,
                right: 30.0,
                left: 30.0,
                top: -220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    AppIcon(
                      icon: Icons.favorite_border,
                      iconSize: 20,
                    )
                  ],
                ))
          ]),
          Container(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
            child: const Column(
              children: [
                AppColumn(
                  text: "Red Tomatoes",
                  rate: "(5.0)",
                  des: 'Description',
                  description:
                      "Red tomatoes are sweet and are a major ingredient when making stew for households, their juicy nature make them irresistible and super sweet.",
                  pack: '25 tomatoes in a pack',
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 20, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: "Related Products",
                    color: const Color(0xFF343A40),
                    size: 16,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.black26,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        width: 160,
                        height: 80,
                        child: Center(
                          child: Row(children: [
                            Image.asset(image2),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                SmallText(
                                  text: text1,
                                  size: 14,
                                ),
                                const SizedBox(height: 5),
                                SmallText(
                                  text: price1,
                                  size: 14,
                                  color: const Color(0xFF936639),
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.black26,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        width: 160,
                        height: 80,
                        child: Row(children: [
                          Image.asset(image3),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SmallText(
                                text: text2,
                                size: 14,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SmallText(
                                text: price2,
                                size: 14,
                                color: const Color(0xFF936639),
                              )
                            ],
                          ),
                        ]),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26,
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallText(
                              text: "Price",
                              color: const Color(0xFFADB5BD),
                              size: 14,
                            ),
                            BigText(
                              text: "\$10.99",
                              size: 20,
                            ),
                          ]),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomButton(
                          height: 45,
                          width: 190,
                          text: "Add to Cart",
                          textsize: 16,
                          onPressed: () {
                            Get.to(() => const CartPage());
                          })
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
