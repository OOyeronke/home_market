import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/colors.dart';
import 'dimensions.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final IconData? iconData, iconData2, suffIcon1, suffIcon2;
  final String? hintText;
  bool? isObsecre = true;
  bool? enabled = true;
  final Function()? onPressed;
  final validate;

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
  });

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Container(
      height: Dimensions.screenHeight * 0.075,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.grey, width: 2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.only(
        top: Dimensions.screenHeight * 0.005,
        bottom: Dimensions.screenHeight * 0.005,
        left: Dimensions.screenHeight * 0.005,
        right: Dimensions.screenHeight * 0.005,
      ),
      margin: EdgeInsets.only(
        top: Dimensions.screenHeight * 0.005,
        bottom: Dimensions.screenHeight * 0.005,
        left: Dimensions.screenHeight * 0.005,
        right: Dimensions.screenHeight * 0.005,
      ),
      child: TextFormField(
        enabled: enabled,
        controller: textEditingController,
        obscureText: isObsecre!,
        validator: validate,
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
              color: AppColors.grey,
            )),
      ),
    );
  }
}
