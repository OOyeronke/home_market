import 'package:flutter/material.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';

import '../../utilities/colors.dart';
import '../../widget/dimensions.dart';

class ProductPage extends StatelessWidget {
  final dynamic productData;
  final String image;
  final String name;
  final String classf;
  final String price;
  final String rating;
  final Function() onPressed;

  const ProductPage(
      {super.key,
      this.productData,
      required this.image,
      required this.name,
      required this.classf,
      required this.price,
      required this.rating,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(
          top: Dimensions.screenHeight * 0.01,
          left: Dimensions.screenWidth * 0.03,
        ),
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
                width: Dimensions.screenWidth * 0.4,
                height: Dimensions.screenHeight * 0.22,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  bottom: Dimensions.screenHeight * 0.003,
                  right: 0,
                  left: 0,
                  top: Dimensions.screenHeight * 0.13,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: Dimensions.screenWidth * 0.025,
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
                          text: name,
                          size: 16,
                        ),
                        SmallText(
                          text: classf,
                          size: 10,
                          color: AppColors.grey,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: AppColors.orange,
                              size: 14,
                            ),
                            SmallText(
                              text: rating,
                              size: 14,
                              color: AppColors.grey,
                            ),
                            SizedBox(
                              width: Dimensions.screenWidth * 0.1,
                            ),
                            SmallText(
                              text: "\$" + price,
                              size: 14,
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
      ),
    );
  }
}
