import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  const SmallText({
    super.key,
    this.color = AppColors.mainColor,
    required this.text,
    this.height = 1.2,
    this.size = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: GoogleFonts.inter(fontSize: size, color: color, height: height),
    );
  }
}
