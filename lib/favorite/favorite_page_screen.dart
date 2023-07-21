// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:home_market/favorite/favorite_list_screen%20.dart';
// import 'package:home_market/utilities/big_text.dart';
// import 'package:home_market/utilities/colors.dart';
// import 'package:home_market/utilities/small_text.dart';
// import 'package:home_market/widget/app_icon.dart';
// import 'package:provider/provider.dart';

// import '../model/favorite_page_model.dart';
// import '../widget/dimensions.dart';

// class FavoritePageScreen extends StatelessWidget {
//   const FavoritePageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding:
//           const EdgeInsets.only(top: 50.0, left: 20, right: 10, bottom: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).pop();
//             },
//             child: AppIcon(
//               width: Dimensions.screenWidth * 0.1,
//               height: Dimensions.screenHeight * 0.05,
//               icon: Icons.arrow_back_ios,
//               iconSize: 18,
//             ),
//           ),
//           const Center(
//               child: BigText(
//             text: "Favourites",
//             size: 24,
//           )),
//           SizedBox(
//             height: 20,
//           ),
//           const Expanded(
//             // child: Padding(
//             //   padding: EdgeInsets.all(8),
//             child: _FavoritePageList(),
//             //),
//           )
//         ],
//       ),
//     );
//   }
// }

// class _FavoritePageList extends StatelessWidget {
//   const _FavoritePageList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final provider = FavoritePageModel.of(context);
//     // final Category = provider.Category;
//     var itemNameStyle = Theme.of(context).textTheme.headline6;

//     var favoritePage = context.watch<FavoritePageModel>();

//     return
//         // ListView.builder(
//         //   itemCount: Category.length,
//         //   itemBuilder: (context, index) {
//         //     final itemData = Category[index];
//         //     return ListTile(
//         //       title: Text(itemData[index]),
//         //       trailing: IconButton(
//         //         onPressed: () {
//         //           provider.toggleFavorite(itemData);
//         //         },
//         //         icon: provider.isExist(itemData)
//         //             ? const Icon(Icons.favorite, color: Colors.red)
//         //             : const Icon(Icons.favorite_border),
//         //       ),
//         //     );
//         //   },
//         // );

//         ListView.builder(
//             itemCount: favoritePage.items.length,
//             itemBuilder: (context, index) => ListTile(
//                   leading: Container(
//                       width: 75,
//                       height: 75,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: AppColors.grey),
//                       child: Image.asset(favoritePage.items[index].image)),
//                   trailing: IconButton(
//                     onPressed: () {
//                       favoritePage.remove(favoritePage.items[index]);
//                     },
//                     icon: const Icon(Icons.delete),
//                   ),
//                   title: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       SmallText(
//                         text: favoritePage.items[index].name,
//                         size: 16,
//                       ),
//                       SmallText(
//                         text: favoritePage.items[index].subtitle,
//                         size: 10,
//                       ),
//                       SmallText(
//                         text: favoritePage.items[index].price,
//                         size: 8,
//                       )
//                     ],
//                   ),
//                 ));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:home_market/controller/favorite_controller.dart';

// import '../../controller/cart_controller.dart';
// import '../../model/market_model.dart';

// class FavoritePageScreen extends StatelessWidget {
//   //Widget generateCart(BuildContext context, ShopItemModel d)
//   Widget generateFav(BuildContext context, MarketItemModel e) {
//     return Padding(
//       padding: EdgeInsets.all(5.0),
//       child: Container(
//         decoration: BoxDecoration(
//             color: Colors.white12,
//             border: Border(
//               bottom: BorderSide(color: Colors.grey.shade100, width: 1.0),
//               top: BorderSide(color: Colors.grey.shade100, width: 1.0),
//             )),
//         height: 100.0,
//         child: Row(
//           children: <Widget>[
//             Container(
//               alignment: Alignment.topLeft,
//               height: 100.0,
//               width: 100.0,
//               decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(color: Colors.black12, blurRadius: 5.0)
//                   ],
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(10.0),
//                       bottomRight: Radius.circular(10.0)),
//                   image: DecorationImage(
//                       image: NetworkImage(e.image), fit: BoxFit.fitHeight)),
//             ),
//             Expanded(
//                 child: Padding(
//               padding: EdgeInsets.only(top: 10.0, left: 15.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Text(
//                           e.name,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w600, fontSize: 15.0),
//                         ),
//                       ),
//                       Container(
//                         alignment: Alignment.bottomRight,
//                         child: InkResponse(
//                           onTap: () {
//                             Get.find<FavoritePageController>()
//                                 .removeFromFav(e.shopId ?? 0);
//                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                                 content: Text(
//                                     "Item removed from cart successfully")));
//                           },
//                           child: Padding(
//                             padding: EdgeInsets.only(right: 10.0),
//                             child: Icon(
//                               Icons.remove_circle,
//                               color: Colors.red,
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 5.0,
//                   ),
//                   Text("Price ${e.price.toString()}"),
//                 ],
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }

//   // getItemTotal(List<MarketItemModel> items) {
//   //   double sum = 0.0;
//   //   items.forEach((e) {
//   //     sum += e.price;
//   //   });
//   //   return "\$$sum";
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final controllerFav = Get.find<FavoritePageController>();

//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Favorite list"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               child: GetBuilder<FavoritePageController>(
//                 builder: (_) {
//                   if (controllerFav.favoriteItems.length == 0) {
//                     return Center(
//                       child: Text("No item found"),
//                     );
//                   }
//                   return ListView(
//                     shrinkWrap: true,
//                     children: controllerFav.favoriteItems
//                         .map((d) => generateFav(context, d))
//                         .toList(),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//          );
//   }
// }

import 'package:flutter/material.dart';
import 'package:home_market/utilities/colors.dart';
import '../model/food_model.dart';
import '../widget/plant_widget.dart';

class FavoritePageScreen extends StatefulWidget {
  final List<Plant> favoritedPlants;
  const FavoritePageScreen({Key? key, required this.favoritedPlants})
      : super(key: key);

  @override
  State<FavoritePageScreen> createState() => _FavoritePageScreenState();
}

class _FavoritePageScreenState extends State<FavoritePageScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.favoritedPlants.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/lemon.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your favorite groceries list is empty',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height * .5,
              child: ListView.builder(
                  itemCount: widget.favoritedPlants.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return PlantWidget(
                        index: index, plantList: widget.favoritedPlants);
                  }),
            ),
    );
  }
}
