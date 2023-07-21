import 'package:flutter/material.dart';

import 'list_model.dart';

class FavoritePageModel extends ChangeNotifier {
  late ListModel _favoriteList;

  final List<int> _itemIds = [];

  //var favoriteList = context.watch<FavoriteItemListModel>();

  ListModel get favoriteList => _favoriteList;

  set favoriteList(ListModel newList) {
    _favoriteList = newList;

    notifyListeners();
  }

  List<Item> get items =>
      _itemIds.map((id) => _favoriteList.getById(id)).toList();

  void add(Item item) {
    _itemIds.add(item.id);
    notifyListeners();
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
    notifyListeners();
  }
}
