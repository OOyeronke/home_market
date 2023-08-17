import 'package:flutter/material.dart';
import 'package:home_market/utilities/colors.dart';
import '../../model/food_model.dart';
import '../../widget/plant_widget.dart';

class CartPage extends StatefulWidget {
  final List<Plant> addedToCartPlants;
  const CartPage({Key? key, required this.addedToCartPlants}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Cart Page')),
      body: widget.addedToCartPlants.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/add-cart.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Your Cart is Empty',
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
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: widget.addedToCartPlants.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return PlantWidget(
                              index: index,
                              plantList: widget.addedToCartPlants);
                        }),
                  ),
                  const Column(
                    children: [
                      Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Totals',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            r'$65',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
