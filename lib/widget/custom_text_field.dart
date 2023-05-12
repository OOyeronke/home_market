import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final IconData? iconData, iconData2;
  final String? hintText;
  bool? isObsecre = true;
  bool? enabled = true;
  final Function()? onPressed;
  CustomTextField({
    super.key,
    this.textEditingController,
    this.iconData,
    this.hintText,
    this.isObsecre,
    this.enabled,
    this.onPressed,
    this.iconData2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFADB5BD), width: 2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: TextFormField(
        enabled: enabled,
        controller: textEditingController,
        obscureText: isObsecre!,
        //textAlign: TextAlign.center,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              iconData2,
            ),
            suffixIcon: GestureDetector(
              onTap: onPressed,
              child: Icon(
                iconData,
                color: Colors.grey,
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xFFADB5BD))),
      ),
    );
  }
}
