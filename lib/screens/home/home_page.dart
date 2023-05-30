import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/product_page.dart';
import 'package:home_market/screens/products/products_item.dart';
import 'package:home_market/screens/search/search_location.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/search_data.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/product_button.dart';
import '../../utilities/colors.dart';
import '../../widget/dimensions.dart';
import '../logging_screens.dart/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedMeal = "";

  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: Dimensions.screenHeight * 0.06,
          left: Dimensions.screenWidth * 0.04,
          right: Dimensions.screenWidth * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(
                      text: "Welcome",
                      size: 14,
                    ),
                    BigText(
                      text: "May Valerie",
                      size: 20,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xFF8DBF2C),
                  ),
                  child: Image.asset(
                    "assets/images/carrot.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.02,
            ),
            Container(
              width: Dimensions.screenWidth * 0.9,
              height: Dimensions.screenHeight * 0.06,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 5.0, color: Colors.black12),
                ],
              ),
              child: OutlinedButton.icon(
                  label: const Text(
                    "Search",
                  ),
                  icon: const Icon(Icons.search),
                  style: OutlinedButton.styleFrom(
                    primary: AppColors.grey,
                    alignment: Alignment.centerLeft,
                    side: const BorderSide(color: Colors.transparent),
                  ),
                  onPressed: () {
                    Get.to(() => SearchLocation());
                  }),
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.02,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    ProductButton(
                      text: "All",
                      onPressed: () {
                        Get.to(() => const LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Groceries",
                      onPressed: () {
                        Get.to(() => const LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Vegetables",
                      onPressed: () {
                        Get.to(() => const LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Fruit",
                      onPressed: () {
                        Get.to(() => const LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Meat",
                      onPressed: () {
                        Get.to(() => const LogIn());
                      },
                    ),
                  ],
                )),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimensions.screenHeight * 0.005,
                  right: Dimensions.screenWidth * 0.05,
                  left: Dimensions.screenWidth * 0.005,
                  bottom: Dimensions.screenHeight * 0.005,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ProductPage(
                          image: "assets/images/red_tomato.png",
                          name: "Red Tomato",
                          classf: "Vegetables",
                          price: "10.99",
                          rating: "(5.0)",
                          onPressed: () {
                            Get.to(() => const ProductItem(
                                  image: 'assets/images/red_tomato2.png',
                                  image2: 'assets/images/lettuce2.png',
                                  image3: 'assets/images/pepper.png',
                                  price1: '\$14.99',
                                  price2: '\$11.99',
                                  text1: 'Lettuce',
                                  text2: 'Pepper',
                                ));
                          },
                        ),
                        ProductPage(
                          image: "assets/images/cabbage.png",
                          name: "Cabbage",
                          classf: "Vegetables",
                          price: "3.15",
                          rating: "(5.0)",
                          onPressed: () {
                            Get.to(() => const ProductItem(
                                  image: 'assets/images/red_tomato2.png',
                                  image2: 'assets/images/lettuce2.png',
                                  image3: 'assets/images/pepper.png',
                                  price1: '\$14.99',
                                  price2: '\$11.99',
                                  text1: 'Lettuce',
                                  text2: 'Pepper',
                                ));
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ProductPage(
                          image: "assets/images/lettuce.png",
                          name: "Lettuce",
                          classf: "Vegetables",
                          price: "14.99",
                          rating: "(4.5)",
                          onPressed: () {
                            Get.to(() => const ProductItem(
                                  image: 'assets/images/red_tomato2.png',
                                  image2: 'assets/images/lettuce2.png',
                                  image3: 'assets/images/pepper.png',
                                  price1: '\$14.99',
                                  price2: '\$11.99',
                                  text1: 'Lettuce',
                                  text2: 'Pepper',
                                ));
                          },
                        ),
                        ProductPage(
                          image: "assets/images/cow_meat.png",
                          name: "Cow Meat",
                          classf: "Meat",
                          price: "26.00",
                          rating: "(4.2)",
                          onPressed: () {
                            Get.to(() => const ProductItem(
                                  image: 'assets/images/red_tomato2.png',
                                  image2: 'assets/images/lettuce2.png',
                                  image3: 'assets/images/pepper.png',
                                  price1: '\$14.99',
                                  price2: '\$11.99',
                                  text1: 'Lettuce',
                                  text2: 'Pepper',
                                ));
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.screenHeight * 0.01,
                    ),
                    const BigText(
                      text: "Recently Viewed",
                      color: AppColors.black,
                      size: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/carrot.png"),
                            SizedBox(
                              width: Dimensions.screenWidth * 0.05,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(
                                    text: "Carrot",
                                    size: 13,
                                    color: AppColors.mainColor),
                                SmallText(
                                  text: "Vegetable",
                                  color: AppColors.grey,
                                  size: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              width: Dimensions.screenWidth * 0.25,
                            ),
                            const BigText(
                              text: "\$10.99",
                              color: AppColors.brown,
                              size: 18,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
