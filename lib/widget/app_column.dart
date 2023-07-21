import 'package:flutter/material.dart';
import 'package:home_market/utilities/colors.dart';
import 'package:home_market/widget/app_icon.dart';

import '../utilities/big_text.dart';
import '../utilities/small_text.dart';
import 'dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final String rate;
  final String des;
  final String description;
  final String pack;
  const AppColumn(
      {super.key,
      required this.text,
      required this.rate,
      required this.des,
      required this.description,
      required this.pack});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: 20),
        SizedBox(height: Dimensions.screenHeight * 0.001),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: AppColors.orange,
                        size: 14,
                      )),
            ),
            SizedBox(width: Dimensions.screenWidth * 0.01),
            SmallText(
              text: rate,
              color: AppColors.grey,
            ),
            SizedBox(width: Dimensions.screenWidth * 0.4),
            AppIcon(
              width: Dimensions.screenWidth * 0.07,
              height: Dimensions.screenHeight * 0.05,
              icon: Icons.remove,
              backgroundColor: AppColors.containerColor,
              iconColor: AppColors.iconBackgroundColor,
            ),
            SizedBox(
              width: Dimensions.screenWidth * 0.02,
            ),
            const BigText(
              text: "1",
              color: AppColors.black,
              size: 14,
            ),
            SizedBox(
              width: Dimensions.screenWidth * 0.02,
            ),
            AppIcon(
              width: Dimensions.screenWidth * 0.07,
              height: Dimensions.screenHeight * 0.05,
              icon: Icons.add,
              backgroundColor: AppColors.iconColor1,
              iconColor: AppColors.containerColor,
            ),
          ],
        ),
        SizedBox(height: Dimensions.screenHeight * 0.001),
        SmallText(
          text: des,
          size: 16,
          color: Color(0xFF343A40),
        ),
        SizedBox(height: Dimensions.screenHeight * 0.01),
        SmallText(
          text: description,
        ),
        SizedBox(height: Dimensions.screenHeight * 0.01),
        SmallText(
          text: "Pack",
          color: AppColors.iconColor1,
          size: 16,
        ),
        SizedBox(height: Dimensions.screenHeight * 0.01),
        SmallText(
          text: pack,
          color: AppColors.iconColor1,
        )
      ],
    );
  }
}
