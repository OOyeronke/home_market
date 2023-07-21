import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  final TextAlign? textAlign;
  const SmallText({
    super.key,
    this.color = AppColors.mainColor,
    required this.text,
    this.height = 1.2,
    this.size = 10,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      style: GoogleFonts.inter(
        fontSize: size,
        color: color,
        height: height,
      ),
    );
  }
}
