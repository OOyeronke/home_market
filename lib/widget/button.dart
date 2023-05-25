import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import 'dimensions.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final double? textsize;
  final Color? textcolor;
  final Color? bordercolor;
  final String text;
  final double? width;
  final double? height;
  final Function() onPressed;

  CustomButton({
    super.key,
    this.color = AppColors.iconColor1,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.textcolor = Colors.white,
    this.bordercolor,
    this.textsize = 22,
  });

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(
        left: Dimensions.screenWidth * 0.1,
        right: Dimensions.screenWidth * 0.1,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.iconColor1),
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: textcolor,
            fontSize: textsize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
