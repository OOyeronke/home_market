//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_market/widget/app_icon.dart';

import '../utilities/big_text.dart';
import '../utilities/small_text.dart';
//import 'icon_and_text_widget.dart';
// import 'package:food_delivery/widgets/small_text.dart';

// import '../utils/dimensions.dart';
// import 'big_text.dart';
// import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final String rate;
  final String des;
  final String description;
  final String pack;
  const AppColumn(
      {super.key,
      required this.text,
      required this.rate,
      required this.des,
      required this.description,
      required this.pack});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: 20),
        const SizedBox(height: 5),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: Color(0xFFFAA307),
                        size: 14,
                      )),
            ),
            const SizedBox(width: 10),
            SmallText(
              text: rate,
              color: const Color(0xFFADB5BD),
            ),
            const SizedBox(
              width: 100,
            ),
            AppIcon(
              icon: Icons.remove,
              backgroundColor: const Color(0xFFC2C5AA),
              iconColor: const Color(0xFF414833),
            ),
            const SizedBox(
              width: 10,
            ),
            // Text("1",),
            BigText(
              text: "1",
              color: const Color(0xFF000000),
              size: 16,
            ),
            const SizedBox(width: 10),
            AppIcon(
              icon: Icons.add,
              backgroundColor: const Color(0xFF656D4A),
              iconColor: const Color(0xFFC2C5AA),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        SmallText(
          text: des,
          size: 16,
          color: Color(0xFF343A40),
        ),
        const SizedBox(
          height: 5,
        ),
        // Text(
        //   description,
        //   style: const TextStyle(fontSize: 12, color: Colors.black26),
        // ),
        SmallText(
          text: description,
        ),
        const SizedBox(
          height: 10,
        ),
        SmallText(
          text: "Pack",
          color: const Color(0xFF656D4A),
          size: 16,
        ),
        const SizedBox(
          height: 2,
        ),
        SmallText(
          text: pack,
          color: const Color(0xFF656D4A),
        )
      ],
    );
  }
}
