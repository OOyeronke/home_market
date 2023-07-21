// import 'package:flutter/material.dart';
// import 'package:home_market/model/market_model.dart';

// class FavoritePageModel extends ChangeNotifier {
//   late MarketItemModel _favoriteList;

//   final List<int> _itemIds = [];
//   bool isLoading = true;

//   //var favoriteList = context.watch<FavoriteItemListModel>();

//   MarketItemModel get favoriteList => _favoriteList;

//   set favoriteList(MarketItemModel newList) {
//     _favoriteList = newList;

//     notifyListeners();
//   }

//   // List<Item> get items =>
//   //     _itemIds.map((id) => _favoriteList.getById(id)).toList();

//   // void add(Item item) {
//   //   _itemIds.add(item.id);
//   //   notifyListeners();
//   // }

//   // void remove(Item item) {
//   //   _itemIds.remove(item.id);
//   //   notifyListeners();
//   // }
// }

import 'package:get/get.dart';
import '../model/market_model.dart';
import '../services/item_services.dart';

class FavoritePageController extends GetxController {
  ItemServices itemServices = ItemServices();
  // List<ShopItemModel> items = [];
  // List<ShopItemModel> cartItems = [];
  List<MarketItemModel> favItems = [];
  List<MarketItemModel> favoriteItems = [];
  bool isLoading2 = true;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadDB();
  }

  loadDB() async {
    await itemServices.openDB();
    loadItems();
    getFavList();
  }

  getFavItem(int id) {
    return favItems.singleWhere((element) => element.id == id);
  }

  bool isAlreadyInFavorite(id) {
    return favoriteItems.indexWhere((element) => element.shopId == id) > -1;
  }

  getFavList() async {
    try {
      List list = await itemServices.getFavList();
      favoriteItems.clear();
      list.forEach((element) {
        // cartItems.add(ShopItemModel.fromJson(element));
        favoriteItems.add(MarketItemModel.fromJson(element));
      });
      update();
    } catch (e) {
      print(e);
    }
  }

  loadItems() async {
    try {
      isLoading2 = true;
      update();

      List list = await itemServices.loadItems();
      list.forEach((element) {
        //items.add(ShopItemModel.fromJson(element));
        favItems.add(MarketItemModel.fromJson(element));
      });

      isLoading2 = false;
      update();
    } catch (e) {
      print(e);
    }
  }

  setToFav(int id, bool flag) async {
    int index = favItems.indexWhere((element) => element.id == id);

    favItems[index].fav = flag;
    update();
    try {
      await itemServices.setItemAsFavourite(id, flag);
    } catch (e) {
      print(e);
    }
  }

  Future addToFav(MarketItemModel item) async {
    isLoading2 = true;
    update();
    var result = await itemServices.addToFav(item);
    isLoading2 = false;
    update();
    return result;
  }

  removeFromFav(int shopId) async {
    itemServices.removeFromFav(shopId);
    int index = favoriteItems.indexWhere((element) => element.shopId == shopId);
    favoriteItems.removeAt(index);
    update();
  }
}
