import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final IconData? iconData, iconData2, suffIcon1, suffIcon2;
  final String? hintText;
  bool? isObsecre = true;
  bool? enabled = true;
  final Function()? onPressed;
  final validate;
  //String Function(String?)? onSave;
  CustomTextField({
    super.key,
    this.textEditingController,
    this.iconData,
    this.hintText,
    this.isObsecre,
    this.enabled,
    this.onPressed,
    this.iconData2,
    this.suffIcon1,
    this.suffIcon2,
    this.validate,
    //this.onSave,
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
        validator: validate,
        //onSaved: onSave,
        //textAlign: TextAlign.center,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              iconData2,
            ),
            suffixIcon: GestureDetector(
              onTap: onPressed,
              child: Icon(isObsecre! ? suffIcon1 : suffIcon2),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.inter(
              color: const Color(0xFFADB5BD),
            )),
      ),
    );
  }
}
