import 'package:flutter/material.dart';
import 'package:home_market/screens/products/products_item.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';
import 'package:provider/provider.dart';

import '../../model/list_model.dart';
import '../../utilities/colors.dart';
import '../../widget/dimensions.dart';

class ProductPage extends StatelessWidget {
  final int index;

  const ProductPage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var item = context.select<ListModel, Item>(
      (favoriteList) => favoriteList.getByPosition(index),
    );

    Dimensions().init(context);
    return GestureDetector(
      onTap:
          //() {},
          //onPress,
          () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductItem(
                  index: index,
                  itemId: item.id,
                )));
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 5.0, color: Colors.black12),
                ],
              ),
              width: Dimensions.screenWidth * 0.37,
              height: Dimensions.screenHeight * 0.2,
              child: Image.asset(
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
                        text: item.name,
                        size: 14,
                      ),
                      SmallText(
                        text: item.subtitle,
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
                            text: item.rate,
                            size: 12,
                            color: AppColors.grey,
                          ),
                          SizedBox(
                            width: Dimensions.screenWidth * 0.1,
                          ),
                          SmallText(
                            text: item.price,
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
