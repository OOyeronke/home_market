import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final double? textsize;
  final Color? textcolor;
  final Color? bordercolor;
  final String text;
  final double? width;
  final double? height;
  final Function() onPressed;

  const CustomButton({
    super.key,
    this.color = const Color(0xFF656D4A),
    required this.text,
    required this.onPressed,
    this.width = 270,
    this.height = 45,
    this.textcolor = Colors.white,
    this.bordercolor,
    this.textsize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.only(left: 40, right: 40),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF656D4A)),
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
