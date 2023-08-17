import 'package:flutter/material.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/widget/button.dart';
import '../../model/food_model.dart';
import '../../utilities/colors.dart';
import '../../utilities/small_text.dart';
import '../../widget/app_column.dart';
import '../../widget/app_icon.dart';
import '../../widget/dimensions.dart';

class ItemDetailPage extends StatefulWidget {
  //final int itemId;
  final int plantId;

  ItemDetailPage({required this.plantId});

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  //Toggle add remove from cart
  bool toggleIsSelected(bool isSelected) {
    return !isSelected;
  }

  @override
  Widget build(BuildContext context) {
    List<Plant> _plantList = Plant.plantList;
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Container(
            width: Dimensions.screenWidth * 1,
            height: Dimensions.screenHeight * 0.44,
            child: Image.asset(
              _plantList[widget.plantId].image2,
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
                  GestureDetector(
                    onTap: () {
                      debugPrint('favorite');
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(.15),
                      ),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              bool isFavorited = toggleIsFavorated(
                                  _plantList[widget.plantId].isFavorated);
                              _plantList[widget.plantId].isFavorated =
                                  isFavorited;
                            });
                          },
                          icon: Icon(
                            _plantList[widget.plantId].isFavorated == true
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: AppColors.iconColor1,
                          )),
                    ),
                  ),
                ],
              ))
        ]),
        Divider(
          color: Colors.grey[300],
          height: 1.0,
        ),
        Container(
          padding: EdgeInsets.only(
            top: Dimensions.screenHeight * 0.007,
            right: Dimensions.screenWidth * 0.02,
            left: Dimensions.screenWidth * 0.04,
          ),
          child: Column(
            children: [
              AppColumn(
                text: _plantList[widget.plantId].plantName,
                rate: _plantList[widget.plantId].rating.toString(),
                des: "Description",
                description: _plantList[widget.plantId].description,
                pack: _plantList[widget.plantId].pack,
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
      ]),
      bottomNavigationBar: Container(
          // margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(5.0),
          height: 80.0,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top: BorderSide(color: Colors.grey.shade300, width: 1.0))),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        //width: 60.0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Column(
                            children: [
                              const Text(
                                "Price",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              BigText(
                                text:
                                    _plantList[widget.plantId].price.toString(),
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      // Text(_plantList[widget.plantId].plantName,
                      //     style: TextStyle(
                      //         fontSize: 25.0, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),

                Container(
                    child: CustomButton(
                        width: 170,
                        textsize: 16,
                        text: _plantList[widget.plantId].isSelected == true
                            ? 'Remove from Cart'
                            : 'Add to Cart',
                        onPressed: () {
                          setState(() {
                            bool isSelected = toggleIsSelected(
                                _plantList[widget.plantId].isSelected);
                            _plantList[widget.plantId].isSelected = isSelected;
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //     content:
                            //         Text("Item added in cart successfully")));
                          });
                        })),

                // Container(
                //   child: IconButton(
                //       onPressed: () {
                //         setState(() {
                //           bool isSelected = toggleIsSelected(
                //               _plantList[widget.plantId].isSelected);
                //           _plantList[widget.plantId].isSelected = isSelected;
                //         });
                //       },
                //       icon: Icon(
                //         Icons.shopping_cart,
                //         color: _plantList[widget.plantId].isSelected == true
                //             ? Colors.white
                //             : Colors.blue,
                //       )),
                //   decoration: BoxDecoration(
                //       color: _plantList[widget.plantId].isSelected == true
                //           ? Colors.blue.withOpacity(.5)
                //           : Colors.white,
                //       borderRadius: BorderRadius.circular(50),
                //       boxShadow: [
                //         BoxShadow(
                //           offset: const Offset(0, 1),
                //           blurRadius: 5,
                //           color: Colors.blue.withOpacity(.3),
                //         ),
                //       ]),
                // ),
                // GetBuilder<CartPageController>(builder: (_) {
                //   bool isAdded = controller.isAlreadyInCart(model.id);
                //   if (isAdded) {
                //     return CustommButton(
                //       name: "REMOVE CART",
                //       onTap: () async {
                //         try {
                //           controller.removeFromCart(model.id);
                //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //               content:
                //                   Text("Item removed from cart successfully")));
                //         } catch (e) {
                //           print(e);
                //         }
                //       },
                //     );
                //   }
                //   return CustommButton(
                //     name: "ADD TO CART",
                //     onTap: controller.isLoading
                //         ? null
                //         : () async {
                //             try {
                //               var result = await controller.addToCart(model);
                //               controller.getCardList();
                //               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //                   content:
                //                       Text("Item added in cart successfully")));
                //             } catch (e) {
                //               print(e);
                //             }
                //           },
                //   );
                // }
              ])),
    );
  }
}
