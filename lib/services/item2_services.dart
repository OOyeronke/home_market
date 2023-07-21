// import 'package:home_market/services/sql2_services.dart';
// import 'package:home_market/services/sql_services.dart';
// import 'package:home_market/services/storage2_services.dart';
// import 'package:home_market/services/storage_service.dart';
// import '../model/food_model.dart';
// //import '../model/market_model.dart';

// class ItemServices {
//   SQLService sqlService = SQLService();
//   StorageService storageService = StorageService();
//   List<Plant> shoppingList = [];

//   List<Plant> getShoppingItems() {
//     int count = 1;
//     plantList.forEach((element) {
//       element['id'] = count;
//       shoppingList.add(Plant.fromJson(element));
//       count++;
//     });
//     return shoppingList;
//   }

//   List<Plant> get items => getShoppingItems();

//   Future openDB() async {
//     return await sqlService.openDB();
//   }

//   loadItems() async {
//     bool isFirst = await isFirstTime();

//     if (isFirst) {
//       // Load From local DB
//       List items = await getLocalDBRecord();
//       return items;
//     } else {
//       // Save Record into DB & load record
//       List items = await saveToLocalDB();
//       return items;
//     }
//   }

//   Future<bool> isFirstTime() async {
//     return await storageService.getItem("isFirstTime") == 'true';
//   }

//   Future saveToLocalDB() async {
//     List<Plant> items = this.items;
//     for (var i = 0; i < items.length; i++) {
//       await sqlService.saveRecord(items[i]);
//     }
//     storageService.setItem("isFirstTime", "true");
//     return await getLocalDBRecord();
//   }

//   Future getLocalDBRecord() async {
//     return await sqlService.getItemsRecord();
//   }

//   Future setItemAsFavourite(id, flag) async {
//     return await sqlService.setItemAsFavourite(id, flag);
//   }

//   Future addToCart(Plant plantList) async {
//     return await sqlService.addToCart(plantList);
//   }

//   Future getCartList() async {
//     return await sqlService.getCartList();
//   }

//   removeFromCart(int shopId) async {
//     return await sqlService.removeFromCart(shopId);
//   }

//   Future addToFav(Plant plantList) async {
//     return await sqlService.addToFav(plantList);
//   }

//   Future getFavList() async {
//     return await sqlService.getFavList();
//   }

//   removeFromFav(int shopId) async {
//     return await sqlService.removeFromFav(shopId);
//   }
// }
