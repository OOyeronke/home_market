// import 'package:flutter/material.dart';
// import 'package:home_market/screens/home/main_screen.dart';
// import 'package:home_market/screens/home/product_page.dart';
// import '../../utilities/search_data.dart';

// class SearchScreen extends StatelessWidget {
//   final Food food;
//   const SearchScreen({super.key, required this.food});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.only(left: 15.00, right: 15.00),
//         child: ListTile(
//           onTap: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (_) => MainScreen()));
//           },
//           leading: const Icon(
//             Icons.person,
//             size: 40,
//           ),
//           title: Text(
//             food.foodName,
//             style: const TextStyle(color: Colors.black, fontSize: 18),
//           ),
//           subtitle: Text(
//             "Meal Class : ${(food.foodClass.toString())}",
//             style: const TextStyle(color: Colors.black87, fontSize: 14),
//           ),
//         ));
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:home_market/screens/search/search_details.dart';
// // // import 'package:search_delegate_tutorial/student_details_page.dart';
// // // import 'package:search_delegate_tutorial/students_data.dart';

// // import '../../utilities/search_data.dart';

// // class SingleStudentWidget extends StatelessWidget {
// //   final Food food;
// //   const SingleStudentWidget({super.key, required this.food});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //         padding: const EdgeInsets.only(left: 15.00, right: 15.00),
// //         child: ListTile(
// //           onTap: () {
// //             Navigator.of(context).push(MaterialPageRoute(
// //                 builder: (_) => StudentDetailsPage(food: food)));
// //           },
// //           leading: const Icon(
// //             Icons.person,
// //             size: 40,
// //           ),
// //           title: Text(
// //             food.foodName,
// //             style: const TextStyle(color: Colors.black, fontSize: 18),
// //           ),
// //           subtitle: Text(
// //             "Meal Class : ${(food.foodClass.toString())}",
// //             style: const TextStyle(color: Colors.black87, fontSize: 14),
// //           ),
// //         ));
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:home_market/screens/search/search_details.dart';

import '../../utilities/search_data.dart';
import '../../widget/dimensions.dart';
// import 'package:search_delegate_tutorial/student_details_page.dart';
// import 'package:search_delegate_tutorial/students_data.dart';

class SearchScreen extends StatelessWidget {
  final Food food;
  const SearchScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => SearchDetails(food: food)));
                  },
                  trailing: Text(
                    "${(food.price.toString())}",
                    style: const TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                  leading: Image.asset(food.picture),
                  title: Text(
                    food.foodName,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  subtitle: Text(
                    "${(food.foodClass.toString())}",
                    style: const TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
