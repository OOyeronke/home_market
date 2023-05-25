import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_market/widget/dimensions.dart';

import '../utilities/colors.dart';

class ProductButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const ProductButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.screenHeight * 0.019,
        vertical: Dimensions.screenWidth * 0.03,
      ),
      margin: EdgeInsets.only(left: Dimensions.screenWidth * 0.02),
      child: Text(
        text,
        style: GoogleFonts.inter(color: AppColors.mainColor, fontSize: 12),
      ),
    );
  }
}
