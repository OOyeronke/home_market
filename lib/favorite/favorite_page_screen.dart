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
      appBar: AppBar(
        title: const Text('Favorite Page'),
      ),
      body: widget.favoritedPlants.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/favorited.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
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
