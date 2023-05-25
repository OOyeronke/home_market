import 'package:flutter/widgets.dart';

import '../utilities/colors.dart';

//import '../utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double? width;
  final double? height;
  final double iconSize;
  AppIcon({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.white,
    this.iconColor = AppColors.iconColor1,
    this.iconSize = 16,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
