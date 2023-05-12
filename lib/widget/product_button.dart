import 'package:flutter/material.dart';

class ProductButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const ProductButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    //final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 12),
      ),
    );
  }
}
