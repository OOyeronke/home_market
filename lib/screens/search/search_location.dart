// import 'package:flutter/material.dart';
// import 'package:home_market/model/list_model.dart';
// import 'package:home_market/model/market_model.dart';
// import 'package:home_market/screens/search/search_screen.dart';
// import 'package:home_market/utilities/colors.dart';
// import 'package:home_market/utilities/small_text.dart';

// import '../../model/food_model.dart';

// class SearchLocation extends StatefulWidget {
//   const SearchLocation({super.key});

//   @override
//   SearchLocationState createState() => SearchLocationState();
// }

// class SearchLocationState extends State<SearchLocation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           iconTheme: const IconThemeData(color: AppColors.green),
//           title: const SmallText(
//             text: 'Search',
//             size: 16,
//           ),
//           backgroundColor: Colors.white,
//           actions: [
//             IconButton(
//               onPressed: () async {
//                 showSearch<MarketItemModel?>(
//                     context: context, delegate: FoodSearchDelegate());
//               },
//               icon: const Icon(
//                 Icons.search,
//                 color: AppColors.green,
//               ),
//             ),
//           ],
//         ),
//         body: ListView.builder(
//             itemCount: ListModel.itemImage.length,
//             itemBuilder: (context, index) {
//               return SearchScreen(
//                 index: index,
//               );
//             }));
//   }
// }

// class FoodSearchDelegate extends SearchDelegate<MarketItemModel?> {
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = "";
//           },
//           icon: const Icon(Icons.close)),
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: const Icon(Icons.navigate_before));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         showResults(context);
//       },
//       child: const Center(
//         child: Text(
//           "Start Searching",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final listItems = Plant.where((name) {
//       return name.toString().startsWith(query.toLowerCase());
//     });
//     return ListView.builder(
//       itemCount: listItems.length,
//       itemBuilder: (context, index) {
//         var result = listItems[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );

//     // List<String> matchQuery = [];
//     // for (dynamic fruit in data) {
//     //   if (fruit.toString().contains(query.toLowerCase())) {
//     //     matchQuery.add(fruit);
//     //   }
//     // }
//     // return ListView.builder(
//     //   itemCount: matchQuery.length,
//     //   itemBuilder: (context, index) {
//     //     var result = matchQuery[index];
//     //     return ListTile(
//     //       title: Text(result),
//     //     );
//     //   },
//     // );
//   }

//   // return listItems.isEmpty
//   //     ? const Center(
//   //         child: Text("No Data Found !"),
//   //       )
//   //     : ListView.builder(
//   //         itemCount: listItems.length,
//   //         itemBuilder: (context, index) {
//   //           return SearchScreen(
//   //             index: index,
//   //             item: listItems[index],
//   //           );
//   //         });

//   //  var item = context.select<FavoriteItemListModel, Item>(
//   //   (favoriteList) => favoriteList.getByPosition(index),
//   // );

//   // final listItems = data
//   //     .where(
//   //         (food) => food.name.toLowerCase().startsWith(query.toLowerCase()))
//   //     .toList();
//   // return listItems.isEmpty
//   //     ? const Center(
//   //         child: Text("No Data Found !"),
//   //       )
//   //     : ListView.builder(
//   //         itemCount: listItems.length,
//   //         itemBuilder: (context, index) {
//   //           return SearchScreen(
//   //             index: index,
//   //           );
//   //         });

//   // List<String> matchQuery = [];
//   // for (var food in ListModel.itemSubtitle) {
//   //   if (food.toLowerCase().contains(query.toLowerCase())) {
//   //     matchQuery.add(food);
//   //   }
//   // }

//   // return matchQuery.isEmpty
//   //     ? const Center(
//   //         child: Text("No Data Found !"),
//   //       )
//   //     : ListView.builder(
//   //         itemCount: matchQuery.length,
//   //         itemBuilder: (context, index) {
//   //           var result = matchQuery[index];
//   //           return SearchScreen(index: index);
//   //         },
//   //       );
// }

import 'package:flutter/material.dart';
import 'package:home_market/model/food_model.dart';
import 'package:home_market/screens/search/search_screen.dart';

class SearchLocation extends StatefulWidget {
  final int? plantId;
  const SearchLocation({super.key, this.plantId});

  @override
  SearchLocationState createState() => SearchLocationState();
}

class SearchLocationState extends State<SearchLocation> {
  @override
  Widget build(BuildContext context) {
    List<Plant> _plantList = Plant.plantList;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search Demo"),
          actions: [
            IconButton(
              onPressed: () async {
                showSearch<Plant?>(
                    context: context, delegate: PlantSearchDelegate());
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: _plantList.length,
            itemBuilder: (context, index) {
              return SearchScreen(
                plantId: index,
              );
            }));
  }
}

class PlantSearchDelegate extends SearchDelegate<Plant?> {
  @override
  String get searchFieldLabel => "Search For Groceries";
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return theme.copyWith(
        hintColor: Colors.white,
        inputDecorationTheme:
            const InputDecorationTheme(border: InputBorder.none),
        textTheme: const TextTheme(
            titleLarge: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          // Navigator.of(context).pop();
          close(context, null);
        },
        icon: const Icon(Icons.navigate_before));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Plant> _plantList = Plant.plantList;
    final listItems = query.isEmpty
        ? _plantList
        : _plantList
            .where((student) =>
                student.category.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return listItems.isEmpty
        ? const Center(
            child: Text("No Data Found !"),
          )
        : ListView.builder(
            itemCount: listItems.length,
            itemBuilder: (context, index) {
              return SearchScreen(
                plantId: _plantList[index].plantId,
              );
            });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return InkWell(
      onTap: () {
        showResults(context);
      },
      child: const Center(
        child: Text(
          "Start Searching",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
