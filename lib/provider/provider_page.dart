// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../model/favorite_list_model.dart';
// import '../model/favorite_page_model.dart';

// class ProviderPage extends StatelessWidget {
//   const ProviderPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(providers: [
//       Provider(create: (context) => FavoriteItemListModel()),
//       ChangeNotifierProxyProvider<FavoriteItemListModel, FavoritePageModel>(
//           create: (context) => FavoritePageModel(),
//           update: (context, favoriteList, favoritePage) {
//             if (favoritePage == null)
//               throw ArgumentError.notNull("favoritePage");
//             favoritePage.favoriteList = favoriteList;
//             return favoritePage;
//           })
//     ]);
//   }
// }
