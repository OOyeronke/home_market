//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/cart/cart_page.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/app_column.dart';
import 'package:home_market/widget/button.dart';

import '../../utilities/colors.dart';
import '../../widget/app_icon.dart';
import '../../widget/dimensions.dart';

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
    Dimensions().init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 0,
                right: Dimensions.screenWidth * 0.1,
                left: Dimensions.screenWidth * 0.1,
                top: Dimensions.screenHeight * -0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: AppIcon(
                        width: Dimensions.screenWidth * 0.1,
                        height: Dimensions.screenHeight * 0.05,
                        icon: Icons.arrow_back_ios,
                        iconSize: 18,
                      ),
                    ),
                    AppIcon(
                      width: Dimensions.screenWidth * 0.1,
                      height: Dimensions.screenHeight * 0.05,
                      icon: Icons.favorite_border,
                      iconSize: 20,
                    )
                  ],
                ))
          ]),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.screenHeight * 0.02,
              right: Dimensions.screenWidth * 0.02,
              left: Dimensions.screenWidth * 0.04,
            ),
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
              padding: EdgeInsets.only(
                top: Dimensions.screenHeight * 0.01,
                right: Dimensions.screenWidth * 0.01,
                left: Dimensions.screenWidth * 0.01,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.screenWidth * 0.02,
                    right: Dimensions.screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SmallText(
                      text: "Related Products",
                      color: AppColors.textColor,
                      size: 16,
                    ),
                    SizedBox(
                      height: Dimensions.screenHeight * 0.01,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: Dimensions.screenWidth * 0.02,
                            right: Dimensions.screenWidth * 0.02,
                            top: Dimensions.screenHeight * 0.025,
                            bottom: Dimensions.screenHeight * 0.025,
                          ),
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
                          width: Dimensions.screenWidth * 0.45,
                          height: Dimensions.screenHeight * 0.12,
                          child: Center(
                            child: Row(children: [
                              Image.asset(image2),
                              SizedBox(
                                width: Dimensions.screenWidth * 0.06,
                              ),
                              Column(
                                children: [
                                  SmallText(
                                    text: text1,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    height: Dimensions.screenHeight * 0.01,
                                  ),
                                  SmallText(
                                    text: price1,
                                    size: 14,
                                    color: AppColors.brown,
                                  )
                                ],
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.screenWidth * 0.04,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: Dimensions.screenWidth * 0.02,
                            right: Dimensions.screenWidth * 0.02,
                            top: Dimensions.screenHeight * 0.025,
                            bottom: Dimensions.screenHeight * 0.025,
                          ),
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
                          width: Dimensions.screenWidth * 0.45,
                          height: Dimensions.screenHeight * 0.12,
                          child: Row(children: [
                            Image.asset(image3),
                            SizedBox(
                              width: Dimensions.screenWidth * 0.06,
                            ),
                            Column(
                              children: [
                                SmallText(
                                  text: text2,
                                  size: 14,
                                ),
                                SizedBox(
                                  height: Dimensions.screenHeight * 0.01,
                                ),
                                SmallText(
                                  text: price2,
                                  size: 14,
                                  color: AppColors.brown,
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
          ),
          SizedBox(
            height: Dimensions.screenHeight * 0.057,
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
                  padding: EdgeInsets.only(
                    top: Dimensions.screenHeight * 0.025,
                    bottom: Dimensions.screenHeight * 0.027,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: Dimensions.screenWidth * 0.06,
                      ),
                      const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallText(
                              text: "Price",
                              color: AppColors.grey,
                              size: 14,
                            ),
                            BigText(
                              text: "\$10.99",
                              size: 20,
                            ),
                          ]),
                      SizedBox(
                        width: Dimensions.screenWidth * 0.15,
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
