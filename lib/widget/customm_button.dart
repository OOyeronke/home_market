import 'package:flutter/material.dart';

class CustommButton extends StatelessWidget {
  final String name;
  final GestureTapCallback? onTap;

  CustommButton({required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
    );
  }
}
