// import 'package:flutter/material.dart';

// // import '../utils/constants.dart';
// // import '../utils/widget_functions.dart';

// class ProductItem extends StatelessWidget {
//   final double width;
//   final dynamic productData;

//   const ProductItem({Key? key, required this.width, required this.productData})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TextTheme textTheme = Theme.of(context).textTheme;
//     //final height = width * 4 / 3;
//     return Container(
//       margin: const EdgeInsets.only(right: 20),
//       width: 300,
//       height: 300,
//       child: Stack(
//         children: [
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Expanded(flex: 2, child: Container()),
//               Expanded(
//                 flex: 7,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20.0),
//                     color: Colors.white,
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                     child: Image.asset(
//                   "assets/images/${productData['image']}",
//                   width: width * 0.80,
//                   fit: BoxFit.cover,
//                 )),
//                 const Expanded(child: Center()),
//                 Text(
//                   "${productData['name']}",
//                   style: textTheme.headline6,
//                 ),
//                 SizedBox(height: 5),
//                 RichText(
//                     overflow: TextOverflow.ellipsis,
//                     text: TextSpan(children: [
//                       TextSpan(
//                           text: "${productData['class']}",
//                           style: textTheme.caption)
//                     ])),
//                 SizedBox(height: 15),
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 5,
//                       child: RichText(
//                           textAlign: TextAlign.left,
//                           overflow: TextOverflow.ellipsis,
//                           text: TextSpan(children: [
//                             const WidgetSpan(
//                                 child: Icon(Icons.star,
//                                     color: Colors.orange, size: 14)),
//                             TextSpan(
//                                 text: "${productData['rating']}",
//                                 style: const TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold)
//                                 // textTheme.subtitle2!
//                                 //     .apply(fontWeightDelta: 4)
//                                 )
//                           ])),
//                     ),
//                     Expanded(
//                       flex: 5,
//                       child: RichText(
//                           textAlign: TextAlign.right,
//                           overflow: TextOverflow.ellipsis,
//                           text: TextSpan(children: [
//                             const TextSpan(
//                                 text: "\$",
//                                 style: TextStyle(
//                                     color: Colors.orange, fontSize: 12)),
//                             TextSpan(
//                                 text: "${productData['price']}",
//                                 style: const TextStyle(
//                                     fontSize: 15,
//                                     color: Colors.orange,
//                                     fontWeight: FontWeight.bold))
//                           ])),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_market/utilities/big_text.dart';
import 'package:home_market/utilities/small_text.dart';

class ProductPage extends StatelessWidget {
  final dynamic productData;
  final String image;
  final String name;
  final String classf;
  final String price;
  final String rating;
  final Function() onPressed;

  const ProductPage(
      {super.key,
      this.productData,
      required this.image,
      required this.name,
      required this.classf,
      required this.price,
      required this.rating,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(
          top: 5,
          left: 10,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 0.5,
                      color: Colors.black12,
                    ),
                  ],
                ),
                width: 140,
                height: 160,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  bottom: 5,
                  right: 0,
                  left: 0,
                  top: 90.0,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    //height: 100,
                    width: 170,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BigText(
                          text: name,
                          size: 16,
                        ),
                        SmallText(
                          text: classf,
                          size: 10,
                          color: Color(0xFFADB5BD),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xFFFAA307),
                              size: 14,
                            ),
                            SmallText(
                              text: rating,
                              size: 14,
                              color: const Color(0xFFADB5BD),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
                            SmallText(
                              text: "\$" + price,
                              size: 14,
                              color: const Color(0xFF936639),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ])
          ]),
        ]),
      ),
    );
  }
}
