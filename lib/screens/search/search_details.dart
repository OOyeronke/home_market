// import 'package:flutter/material.dart';
// // import 'package:search_delegate_tutorial/students_data.dart';

// import '../../utilities/search_data.dart';

// class StudentDetailsPage extends StatelessWidget {
//   final Food food;
//   const StudentDetailsPage({super.key, required this.food});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               food.foodName.toString(),
//               style: const TextStyle(fontSize: 35),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               "Food Class : ${food.foodClass}",
//               style: const TextStyle(fontSize: 20),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../utilities/search_data.dart';
// import 'package:search_delegate_tutorial/students_data.dart';

class SearchDetails extends StatelessWidget {
  final Food food;
  const SearchDetails({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              food.foodName.toString(),
              style: const TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 20),
            Text(
              "${food.foodClass}",
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
