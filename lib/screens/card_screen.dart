import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/list_model.dart';
import '../utilities/big_text.dart';
import '../utilities/colors.dart';
import '../utilities/small_text.dart';
import '../widget/dimensions.dart';

class CardScreen extends StatelessWidget {
  final dynamic itemData;
  final int index;
  const CardScreen({super.key, this.itemData, required this.index});

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    var item = context.select<ListModel, Item>(
      (favoriteList) => favoriteList.getByPosition(index),
    );
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // boxShadow: const [
                //   BoxShadow(blurRadius: 5.0, color: Colors.black12),
                // ],
              ),
              width: Dimensions.screenWidth * 0.37,
              height: Dimensions.screenHeight * 0.2,
              child: Image.asset(
                //image,
                //itemData["image"],
                item.image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                bottom: Dimensions.screenHeight * 0.01,
                right: 0,
                left: 0,
                top: Dimensions.screenHeight * 0.11,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Dimensions.screenWidth * 0.01,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BigText(
                        text:
                            //name,
                            //itemData["name"],
                            item.name,
                        size: 14,
                      ),
                      SmallText(
                        text:
                            //classf,
                            //itemData["catClass"],
                            item.subtitle,
                        size: 10,
                        color: AppColors.grey,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.orange,
                            size: 12,
                          ),
                          SmallText(
                            text: "Rate",
                            //rating,
                            //itemData["rating"],
                            //itemData.rating,
                            size: 12,
                            color: AppColors.grey,
                          ),
                          SizedBox(
                            width: Dimensions.screenWidth * 0.1,
                          ),
                          SmallText(
                            text: "price",
                            //price,
                            //itemData["currency"] + itemData["price"],
                            //itemData.currency + itemData.ratipriceng,
                            size: 12,
                            color: AppColors.brown,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ])
        ]),
      ]),
    );
  }
}
