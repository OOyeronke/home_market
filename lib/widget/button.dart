import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final String text;
  final double? width;
  final double? height;
  final Function() onPressed;

  const CustomButton(
      {super.key,
      this.color = const Color(0xFF656D4A),
      required this.text,
      required this.onPressed,
      this.width = 270,
      this.height = 45});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(left: 40, right: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );
  }
}
