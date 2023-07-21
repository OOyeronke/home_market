import 'package:flutter/material.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';

class FormHeaderWidget extends StatelessWidget {
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  const FormHeaderWidget({
    super.key,
    this.imageColor,
    this.imageHeight = 0.2,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          color: imageColor,
          height: size.height * imageHeight,
        ),
        SizedBox(
          height: heightBetween,
        ),
        BigText(
          text: title,
          size: 24,
        ),
        SmallText(
          text: subTitle,
          size: 15,
          textAlign: textAlign,
        ),
      ],
    );
  }
}
