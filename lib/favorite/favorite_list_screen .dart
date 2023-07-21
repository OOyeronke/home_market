import 'package:flutter/material.dart';
import 'package:home_market/model/list_model.dart';
import 'package:home_market/model/favorite_page_model.dart';
import 'package:home_market/screens/card_screen.dart';
import 'package:home_market/utilities/sample_data.dart';
import 'package:provider/provider.dart';

import '../screens/home/product_page.dart';

class FavoriteListScreen extends StatelessWidget {
  const FavoriteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "Favorite",
              style: Theme.of(context).textTheme.headline1,
            ),
            floating: true,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/favoritePage");
                },
                icon: const Icon(
                  Icons.favorite_border,
                ),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          // SliverList(
          //   delegate:
          //       SliverChildBuilderDelegate((BuildContext context, int index) {
          //     return _MyListItem(index);
          //   }, childCount: 7),
          // )

          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ProductPage(index: index);
            }, childCount: 4),
          )
        ],
      ),
    );
  }
}

class _MyListItem extends StatelessWidget {
  final int index;
  const _MyListItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = context.select<ListModel, Item>(
      (favoriteList) => favoriteList.getByPosition(index),
    );

    var textTheme = Theme.of(context).textTheme.headline6;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: LimitedBox(
        maxHeight: 60,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(item.image),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: textTheme,
                ),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )
              ],
            )),
            const SizedBox(
              width: 24,
            ),
            _AddButton(item: item),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final Item item;
  const _AddButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    var isInFavoritePage = context.select<FavoritePageModel, bool>(
        (favoritePage) => favoritePage.items.contains(item));
    return IconButton(
        icon: isInFavoritePage
            ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : Icon(Icons.favorite_border),
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
