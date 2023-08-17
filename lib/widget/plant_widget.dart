import 'package:flutter/material.dart';
import 'package:home_market/screens/cart/item_details.dart';
import 'package:home_market/utilities/colors.dart';
import 'package:home_market/widget/app_icon.dart';
import '../model/food_model.dart';

class PlantWidget extends StatelessWidget {
  const PlantWidget({
    Key? key,
    required this.index,
    required this.plantList,
  }) : super(key: key);

  final int index;
  final List<Plant> plantList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemDetailPage(
                      plantId: plantList[index].plantId,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grey.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.0,
              child: Image.asset(
                plantList[index].imageURL,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plantList[index].plantName,
                  style: TextStyle(color: AppColors.textColor),
                ),
                Text(
                  plantList[index].category,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.textColor,
                  ),
                ),
                Text(
                  r'$' + plantList[index].price.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 100,
              height: 40.0,
            ),
            Container(
                //padding: const EdgeInsets.only(right: 10),
                child: AppIcon(
              icon: Icons.delete,
              iconSize: 30,
            ))
          ],
        ),
      ),
    );
  }
}
