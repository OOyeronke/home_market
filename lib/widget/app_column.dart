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
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 14,
                      )),
            ),
            const SizedBox(width: 10),
            SmallText(
              text: rate,
            ),
            const SizedBox(
              width: 100,
            ),
            AppIcon(
              icon: Icons.remove,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Text("1"),
            SizedBox(width: 10),
            AppIcon(
              icon: Icons.add,
              backgroundColor: Colors.black,
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          des,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 12, color: Colors.black26),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Pack",
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          pack,
          style: TextStyle(color: Colors.black26, fontSize: 12),
        )
      ],
    );
  }
}
