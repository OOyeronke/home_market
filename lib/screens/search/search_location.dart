import 'package:flutter/material.dart';
import 'package:home_market/screens/search/search_screen.dart';
import 'package:home_market/utilities/search_data.dart';

class SearchLocation extends SearchDelegate<String> {
  final List<String> allMealTypes;
  final List<String> mealSuggestions;

  SearchLocation({
    required this.allMealTypes,
    required this.mealSuggestions,
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = " ";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, query);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> allMeal = allMealTypes
        .where(
          (mealType) => mealType.toLowerCase().contains(
                query.toLowerCase(),
              ),
        )
        .toList();
    return ListView.builder(
      itemCount: allMeal.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(allMeal[index]),
        onTap: () {
          query = allMeal[index];
          close(context, query);
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> allMealSuggestions = mealSuggestions.isEmpty
        ? mealClass
        : mealClass
            .where(
              (mealsSuggest) => mealsSuggest.toLowerCase().contains(
                    query.toLowerCase(),
                  ),
            )
            .toList();
    return ListView.builder(
      itemCount: allMealSuggestions.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(allMealSuggestions[index]),
        onTap: () {
          close(context, allMealSuggestions[index]);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SearchScreen(mealClass.indexWhere(
                      (item) => item == allMealSuggestions[index]))));
          query = allMealSuggestions[index];
        },
      ),
    );
  }
}
