import 'package:flutter/material.dart';
import '../../utilities/search_data.dart';

class SearchScreen extends StatelessWidget {
  final int index;

  SearchScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${mealClass[index]}"),
        ),
        body: Center(
          child: Text(
            "${mealClass[index]}",
            style: TextStyle(fontSize: 22),
          ),
        ));
  }
}
