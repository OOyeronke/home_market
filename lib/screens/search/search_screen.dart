import 'package:flutter/material.dart';
import 'package:home_market/model/market_model.dart';
import 'package:home_market/screens/search/search_details.dart';
import 'package:home_market/utilities/colors.dart';
import 'package:provider/provider.dart';
import '../../model/food_model.dart';
import '../../model/list_model.dart';
import '../../utilities/small_text.dart';
import '../../widget/dimensions.dart';

class SearchScreen extends StatelessWidget {
  final int plantId;

  const SearchScreen({
    super.key,
    required this.plantId,
  });

  @override
  Widget build(BuildContext context) {
    List<Plant> _plantList = Plant.plantList;

    return Padding(
        padding: const EdgeInsets.only(
            left: 15.00, right: 15.00, top: 10, bottom: 10),
        child: Expanded(
          child: Container(
            width: Dimensions.screenWidth * 0.9,
            height: Dimensions.screenHeight * 0.1,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 10.0, color: Colors.black12),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (_) => SearchDetails(index: index)));
                  },
                  trailing: Text(
                    //food.currency + food.price,
                    _plantList[plantId].price.toString(),

                    style: const TextStyle(
                        color: AppColors.brown,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Container(
                      decoration: BoxDecoration(
                          color: AppColors.sliderColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.asset(
                        //food.picture,
                        _plantList[plantId].imageURL,
                        fit: BoxFit.cover,
                      )),
                  title: SmallText(
                    //text: food.foodName,
                    text: _plantList[plantId].plantName,
                    size: 18,
                  ),
                  subtitle: SmallText(
                    //text: food.foodClass,
                    text: _plantList[plantId].category,
                    color: const Color(0xFFADB5BD),
                    size: 8,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
