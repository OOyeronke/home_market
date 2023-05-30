// import 'package:flutter/material.dart';
// import 'package:home_market/screens/logging_screens.dart/login_page.dart';
// import 'package:home_market/screens/search/search_screen.dart';
// import 'package:home_market/utilities/search_data.dart';

// class SearchLocation extends SearchDelegate<String> {
//   //final List<String> allMealTypes;
//   final List<String> mealSuggestions;

//   SearchLocation({
//     //required this.allMealTypes,
//     required this.mealSuggestions,
//   });

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = " ";
//           },
//           icon: const Icon(Icons.clear))
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, query);
//       },
//       icon: const Icon(Icons.arrow_back),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final listItems = query.isEmpty
//         ? foodData
//         : foodData
//             .where((food) =>
//                 food.foodName.toLowerCase().startsWith(query.toLowerCase()))
//             .toList();
//     return listItems.isEmpty
//         ? const Center(
//             child: Text("No Data Found !"),
//           )
//         : ListView.builder(
//             itemCount: listItems.length,
//             itemBuilder: (context, index) {
//               // return SearchScreen(
//               //   //food: listItems[index],
//               // );
//             });
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final List<dynamic> allMealSuggestions = mealSuggestions.isEmpty
//         ? suggestedMeal
//         : suggestedMeal
//             .where(
//               (mealsSuggest) => mealsSuggest.toString().contains(
//                     query.toLowerCase(),
//                   ),
//             )
//             .toList();
//     return ListView.builder(
//       itemCount: allMealSuggestions.length,
//       itemBuilder: (context, index) => ListTile(
//         title: Text(allMealSuggestions[index]),
//         onTap: () {
//           close(context, allMealSuggestions[index]);
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => LogIn()));
//           query = allMealSuggestions[index];
//         },
//         //
//       ),
//     );
//   }
// }

// // class StudentSearchDelegate extends SearchDelegate {
// //   final List<String> mealSuggestions;
// //   StudentSearchDelegate({
// //     required this.mealSuggestions,
// //   });
// //   // @override
// //   // String get searchFieldLabel => "Search For Student";
// //   // @override
// //   // ThemeData appBarTheme(BuildContext context) {
// //   //   final ThemeData theme = Theme.of(context);

// //   //   return theme.copyWith(
// //   //       hintColor: Colors.white,
// //   //       inputDecorationTheme:
// //   //           const InputDecorationTheme(border: InputBorder.none),
// //   //       textTheme: const TextTheme(
// //   //           titleLarge: TextStyle(
// //   //               color: Colors.white,
// //   //               fontSize: 18,
// //   //               fontWeight: FontWeight.bold)));
// //   // }

// //   @override
// //   List<Widget>? buildActions(BuildContext context) {
// //     return [
// //       IconButton(
// //           onPressed: () {
// //             query = "";
// //           },
// //           icon: const Icon(Icons.close)),
// //     ];
// //   }

// //   @override
// //   Widget? buildLeading(BuildContext context) {
// //     return IconButton(
// //       onPressed: () {
// //         close(context, null);
// //       },
// //       icon: const Icon(Icons.arrow_back),
// //     );
// //   }

// //   @override
// //   Widget buildResults(BuildContext context) {
// //     final listItems = query.isEmpty
// //         ? foodData
// //         : foodData
// //             .where((food) =>
// //                 food.foodName.toLowerCase().startsWith(query.toLowerCase()))
// //             .toList();
// //     return listItems.isEmpty
// //         ? const Center(
// //             child: Text("No Data Found !"),
// //           )
// //         : ListView.builder(
// //             itemCount: listItems.length,
// //             itemBuilder: (context, index) {
// //               return SingleStudentWidget(
// //                 food: listItems[index],
// //               );
// //             });
// //   }

// //   @override
// //   Widget buildSuggestions(BuildContext context) {
// //     final listItems = query.isEmpty
// //         ? foodData
// //         : foodData
// //             .where(
// //               (food) => food.foodName.toLowerCase().contains(
// //                     query.toLowerCase(),
// //                   ),
// //             )
// //             .toList();
// //     return ListView.builder(
// //         itemCount: listItems.length,
// //         itemBuilder: (context, index) => ListTile(
// //                 //title: Text(listItems[index]),
// //                 onTap: () {
// //               close(context, index);
// //               Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                       builder: (context) => SingleStudentWidget(
// //                             food: listItems[index],
// //                           )));
// //               //query = listItems[index];
// //             }));
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:home_market/screens/search/search_screen.dart';
import 'package:home_market/utilities/colors.dart';
import 'package:home_market/utilities/search_data.dart';
import 'package:home_market/utilities/small_text.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({super.key});

  @override
  SearchLocationState createState() => SearchLocationState();
}

class SearchLocationState extends State<SearchLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: AppColors.green),
          title: const SmallText(
            text: 'Search',
            size: 16,
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () async {
                showSearch<Food?>(
                    context: context, delegate: FoodSearchDelegate());
              },
              icon: const Icon(
                Icons.search,
                color: AppColors.green,
              ),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: foodData.length,
            itemBuilder: (context, index) {
              return SearchScreen(
                food: foodData[index],
              );
            }));
  }
}

class FoodSearchDelegate extends SearchDelegate<Food?> {
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
          close(context, null);
        },
        icon: const Icon(Icons.navigate_before));
  }

  @override
  Widget buildResults(BuildContext context) {
    final listItems = query.isEmpty
        ? foodData
        : foodData
            .where((food) =>
                food.foodClass.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return listItems.isEmpty
        ? const Center(
            child: Text("No Data Found !"),
          )
        : ListView.builder(
            itemCount: listItems.length,
            itemBuilder: (context, index) {
              return SearchScreen(
                food: listItems[index],
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
