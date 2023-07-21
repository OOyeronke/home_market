import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:home_market/widget/app_column.dart';
import 'package:provider/provider.dart';
import '../../controller/cart2_controller.dart';
import '../../controller/cart_controller.dart';
import '../../model/list_model.dart';
import '../../model/market_model.dart';
import '../../utilities/colors.dart';
import '../../widget/add_button.dart';
import '../../widget/app_icon.dart';
import '../../widget/customm_button.dart';
import '../../widget/dimensions.dart';

class ProductItem extends StatefulWidget {
  final int index;
  final int itemId;
  const ProductItem({
    super.key,
    required this.index,
    required this.itemId,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    var item = context.select<ListModel, Item>(
      (favoriteList) => favoriteList.getByPosition(widget.index),
    );

    Dimensions().init(context);

    CartPageController controller = Get.find<CartPageController>();
    MarketItemModel model = controller.getItem(widget.itemId);
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: Dimensions.screenWidth * 1,
              height: Dimensions.screenHeight * 0.44,
              child: Image.asset(
                item.image2,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                bottom: 0,
                right: Dimensions.screenWidth * 0.02,
                left: Dimensions.screenWidth * 0.05,
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
                    AddButton(item: item),
                  ],
                ))
          ]),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.screenHeight * 0.007,
              right: Dimensions.screenWidth * 0.02,
              left: Dimensions.screenWidth * 0.04,
            ),
            child: Column(
              children: [
                AppColumn(
                  text: item.name,
                  rate: item.rate,
                  des: "Description",
                  description: item.description,
                  pack: item.pack,
                ),
              ],
            ),
          ),
          Container(
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
                          left: Dimensions.screenWidth * 0.01,
                          right: Dimensions.screenWidth * 0.01,
                          top: Dimensions.screenHeight * 0.02,
                          bottom: Dimensions.screenHeight * 0.01,
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
                        height: Dimensions.screenHeight * 0.1,
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
                          left: Dimensions.screenWidth * 0.01,
                          right: Dimensions.screenWidth * 0.01,
                          top: Dimensions.screenHeight * 0.02,
                          bottom: Dimensions.screenHeight * 0.021,
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
                        height: Dimensions.screenHeight * 0.1,
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
          // SizedBox(
          //   height: Dimensions.screenHeight * 0.01,
          // ),
          // Container(
          //   decoration: const BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         blurRadius: 5.0,
          //         color: Colors.black26,
          //       ),
          //     ],
          //     color: Colors.white,
          //   ),
          //   child: Column(
          //     children: [
          //       Container(
          //         padding: EdgeInsets.only(
          //           top: Dimensions.screenHeight * 0.025,
          //           bottom: Dimensions.screenHeight * 0.027,
          //         ),
          //         child: Row(
          //           children: [
          //             SizedBox(
          //               width: Dimensions.screenWidth * 0.06,
          //             ),
          //             const Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   SmallText(
          //                     text: "Price",
          //                     color: AppColors.grey,
          //                     size: 14,
          //                   ),
          //                   BigText(
          //                     text: "\$10.99",
          //                     size: 20,
          //                   ),
          //                 ]),
          //             SizedBox(
          //               width: Dimensions.screenWidth * 0.15,
          //             ),
          //             // AddToCartButton(item: item)
          //             CustomButton(
          //                 height: 45,
          //                 width: 190,
          //                 text: "Add to Cart",
          //                 textsize: 16,
          //                 // onPressed: isInCartPage
          //                 //     ? () {
          //                 //         var cartPage = context.read<CartPageModel>();
          //                 //         cartPage.remove(item);
          //                 //       }
          //                 //     : () {
          //                 //         var cartPage = context.read<CartPageModel>();
          //                 //         cartPage.add(item);
          //                 //       },
          //                 onPressed: () {
          //                   Get.to(() => const CartPage());
          //                 })
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 18.0),
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top: BorderSide(color: Colors.grey.shade300, width: 1.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 60.0,
                      child: Text(
                        "Total Amount",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ),
                    Text("\$${model.price.toString()}",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              GetBuilder<CartPageController>(builder: (_) {
                bool isAdded = controller.isAlreadyInCart(model.id);
                if (isAdded) {
                  return CustommButton(
                    name: "REMOVE CART",
                    onTap: () async {
                      try {
                        controller.removeFromCart(model.id);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text("Item removed from cart successfully")));
                      } catch (e) {
                        print(e);
                      }
                    },
                  );
                }
                return CustommButton(
                  name: "ADD TO CART",
                  onTap: controller.isLoading
                      ? null
                      : () async {
                          try {
                            var result = await controller.addToCart(model);
                            controller.getCardList();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text("Item added in cart successfully")));
                          } catch (e) {
                            print(e);
                          }
                        },
                );
              })
            ],
          )),
    );
  }
}
