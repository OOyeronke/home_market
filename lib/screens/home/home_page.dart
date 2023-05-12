import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/product_page.dart';
import 'package:home_market/screens/products/products_item.dart';
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
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome"),
                    Text(
                      "May Valerie",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
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
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    ProductButton(
                      text: "All",
                      onPressed: () {
                        Get.to(() => LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Groceries",
                      onPressed: () {
                        Get.to(() => LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Vegetables",
                      onPressed: () {
                        Get.to(() => LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Fruit",
                      onPressed: () {
                        Get.to(() => LogIn());
                      },
                    ),
                    ProductButton(
                      text: "Meat",
                      onPressed: () {
                        Get.to(() => LogIn());
                      },
                    ),
                  ],
                )),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
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
                    const Text(
                      "Recently viewed",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/carrot.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              children: [
                                Text("Carrot"),
                                Text(
                                  "Vegetables",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black26),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            const Text("\$10.99")
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
