import 'package:flutter/material.dart';

import '../utilities/big_text.dart';
import '../utilities/small_text.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String title2;
  final String description;
  final String description2;
  final String image;

  SliderPage(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.title2,
      required this.description2});

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
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
                      top: 400.0,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(
                              text: title,
                              color: Color(0xFF333D29),
                              size: 35,
                            ),
                            BigText(
                              text: title2,
                              color: Color(0xFF333D29),
                              size: 35,
                            ),
                            SmallText(
                              text: description,
                            ),
                            SmallText(
                              text: description2,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
