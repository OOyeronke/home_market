import 'package:flutter/material.dart';
import 'package:home_market/utilities/colors.dart';

import '../utilities/big_text.dart';
import '../utilities/small_text.dart';
import '../widget/dimensions.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  color: Colors.white,
                ),
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: 0,
                    right: 0.0,
                    left: 0.0,
                    top: Dimensions.screenHeight * 0.52,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.1),
                            Colors.white,
                            Colors.white,
                            Colors.white,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(Dimensions.screenWidth * 0.075),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(
                              text: title,
                              textAlign: TextAlign.center,
                              color: AppColors.green,
                              size: 30,
                            ),
                            SizedBox(
                              height: Dimensions.screenHeight * 0.01,
                            ),
                            SmallText(
                              text: description,
                            ),
                            SizedBox(
                              height: Dimensions.screenHeight * 0.05,
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
