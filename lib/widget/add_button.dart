import 'package:flutter/material.dart';
import 'package:home_market/utilities/colors.dart';
import 'package:provider/provider.dart';

import '../model/list_model.dart';
import '../model/favorite_page_model.dart';
import 'app_icon.dart';
import 'dimensions.dart';

class AddButton extends StatelessWidget {
  final Item item;
  const AddButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    var isInFavoritePage = context.select<FavoritePageModel, bool>(
        (favoritePage) => favoritePage.items.contains(item));
    return IconButton(
        icon: isInFavoritePage
            ? AppIcon(
                width: Dimensions.screenWidth * 0.1,
                height: Dimensions.screenHeight * 0.05,
                icon: Icons.favorite,
                iconColor: AppColors.mainColor,
                iconSize: 18,
              )
            : AppIcon(
                width: Dimensions.screenWidth * 0.1,
                height: Dimensions.screenHeight * 0.05,
                icon: Icons.favorite_border,
                iconSize: 18,
              ),
        onPressed: isInFavoritePage
            ? () {
                var favoritePage = context.read<FavoritePageModel>();
                favoritePage.remove(item);
              }
            : () {
                var favoritePage = context.read<FavoritePageModel>();
                favoritePage.add(item);
              });
  }
}
