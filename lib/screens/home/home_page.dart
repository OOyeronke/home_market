import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_market/screens/home/product_page.dart';
import 'package:home_market/screens/products/products_item.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/custom_text_field.dart';
import 'package:home_market/widget/product_button.dart';
import '../logging_screens.dart/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                  //padding: const EdgeInsets.all(20),

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
            const SizedBox(
              height: 5,
            ),
            CustomTextField(
              iconData2: Icons.search,
              hintText: "Search",
              textEditingController: searchTextEditingController,
              isObsecre: false,
              enabled: true,
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
                padding:
                    const EdgeInsets.only(top: 1, right: 5, left: 5, bottom: 1),
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
                    const SizedBox(
                      height: 10,
                    ),
                    BigText(
                      text: "Recently Viewed",
                      color: const Color(0xFF000000),
                      size: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/carrot.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(
                                    text: "Carrot",
                                    size: 13,
                                    color: const Color(0xFF6C757D)),
                                SmallText(
                                  text: "Vegetable",
                                  color: const Color(0xFFADB5BD),
                                  size: 10,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            BigText(
                              text: "\$10.99",
                              color: const Color(0xFF936639),
                              size: 18,
                            )
                            // const Text(
                            //   "\$10.99",
                            //   style: TextStyle(color: Color(0xFF936639)),
                            // )
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
