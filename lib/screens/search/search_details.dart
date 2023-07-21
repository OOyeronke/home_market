import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/cart/cart_page.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/app_column.dart';
import 'package:home_market/widget/button.dart';
import 'package:provider/provider.dart';

import '../../model/list_model.dart';
import '../../model/favorite_page_model.dart';
import '../../utilities/colors.dart';
import '../../utilities/search_data.dart';
import '../../widget/app_icon.dart';
import '../../widget/dimensions.dart';

class SearchDetails extends StatelessWidget {
  //final Food food;
  final int index;
  const SearchDetails({
    super.key,
    //required this.food,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var item = context.select<ListModel, Item>(
      (favoriteList) => favoriteList.getByPosition(index),
    );
    Dimensions().init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Image.asset(
              //food.picture2,
              item.image2,
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/favoritePage");
                      },
                      child: AppIcon(
                        width: Dimensions.screenWidth * 0.1,
                        height: Dimensions.screenHeight * 0.05,
                        icon: Icons.favorite_border,
                        iconSize: 20,
                      ),
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
            child: Column(
              children: [
                AppColumn(
                  // text: food.foodName,
                  // rate: food.rating,
                  // des: 'Description',
                  // description:
                  //     "Red tomatoes are sweet and are a major ingredient when making stew for households, their juicy nature make them irresistible and super sweet.",
                  // pack: '25 tomatoes in a pack',
                  text: item.name,
                  rate: item.rate,
                  des: 'Description',
                  description: item.description,
                  pack: item.pack,
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
                              Image.asset("assets/images/lettuce.png"),
                              SizedBox(
                                width: Dimensions.screenWidth * 0.06,
                              ),
                              Column(
                                children: [
                                  SmallText(
                                    text: ("Lettuce"),
                                    size: 14,
                                  ),
                                  SizedBox(
                                    height: Dimensions.screenHeight * 0.01,
                                  ),
                                  SmallText(
                                    text: ("14.99"),
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
                            Image.asset("assets/images/pepper.png"),
                            SizedBox(
                              width: Dimensions.screenWidth * 0.06,
                            ),
                            Column(
                              children: [
                                SmallText(
                                  text: "Pepper",
                                  size: 14,
                                ),
                                SizedBox(
                                  height: Dimensions.screenHeight * 0.01,
                                ),
                                SmallText(
                                  text: "11.99",
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
                            //Get.to(() => const CartPage());
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
