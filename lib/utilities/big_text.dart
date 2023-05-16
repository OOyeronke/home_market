import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final TextOverflow overFlow;

  BigText(
      {super.key,
      this.overFlow = TextOverflow.ellipsis,
      this.size = 35,
      this.color = const Color(0xFF343A40),
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: GoogleFonts.inter(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
      // TextStyle(
      //       fontSize: size,
      //       fontFamily: 'Roboto',
      //       color: color,
      //       fontWeight: FontWeight.bold),
    );
  }
}
