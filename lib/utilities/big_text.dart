import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/dimensions.dart';
import 'colors.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextAlign? textAlign;

  const BigText({
    super.key,
    this.size = 35,
    this.color = AppColors.textColor,
    required this.text,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Text(
      text,
      softWrap: true,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
