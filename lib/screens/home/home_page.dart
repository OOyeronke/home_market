// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:home_market/model/list_model.dart';
// import 'package:home_market/model/favorite_page_model.dart';
// import 'package:home_market/screens/home/product_page.dart';
// import 'package:home_market/screens/profile/profile_page.dart';
// import 'package:home_market/screens/search/search_location.dart';
// import 'package:home_market/utilities/big_text.dart';
// import 'package:home_market/utilities/small_text.dart';
// import 'package:home_market/widget/product_button.dart';
// import 'package:provider/provider.dart';
// import '../../controller/cart2_controller.dart';
// import '../../controller/cart_controller.dart';
// import '../../utilities/colors.dart';
// import '../../utilities/sample_data.dart';
// import '../../widget/dimensions.dart';
// import '../logging_screens.dart/login_page.dart';

// class HomePage extends StatefulWidget {
//   final List<int>? itemData;

//   const HomePage({
//     super.key,
//     this.itemData,
//   });

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String selectedMeal = "";

//   TextEditingController searchTextEditingController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     Dimensions().init(context);
//     final CartPageController controller = Get.put(CartPageController());
//     //var favoriteList = context.watch<FavoriteItemListModel>();
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(
//           top: Dimensions.screenHeight * 0.06,
//           left: Dimensions.screenWidth * 0.04,
//           right: Dimensions.screenWidth * 0.04,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SmallText(
//                       text: "Welcome",
//                       size: 14,
//                     ),
//                     BigText(
//                       text: "May Valerie",
//                       size: 20,
//                     ),
//                   ],
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25),
//                     color: const Color(0xFF8DBF2C),
//                   ),
//                   child: GestureDetector(
//                     onTap: () {
//                       Get.to(() => ProfilePage());
//                     },
//                     child: Image.asset(
//                       "assets/images/carrot.png",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: Dimensions.screenHeight * 0.02,
//             ),
//             Container(
//               width: Dimensions.screenWidth * 0.9,
//               height: Dimensions.screenHeight * 0.06,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(20),
//                 ),
//                 boxShadow: [
//                   BoxShadow(blurRadius: 5.0, color: Colors.black12),
//                 ],
//               ),
//               child: OutlinedButton.icon(
//                   label: const Text(
//                     "Search",
//                   ),
//                   icon: const Icon(Icons.search),
//                   style: OutlinedButton.styleFrom(
//                     primary: AppColors.grey,
//                     alignment: Alignment.centerLeft,
//                     side: const BorderSide(color: Colors.transparent),
//                   ),
//                   onPressed: () {
//                     Get.to(() => SearchLocation());
//                   }),
//             ),
//             SizedBox(
//               height: Dimensions.screenHeight * 0.02,
//             ),
//             SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 physics: const BouncingScrollPhysics(),
//                 child: Row(
//                   children: [
//                     ProductButton(
//                       text: "All",
//                       onPressed: () {
//                         Get.to(() => const LogIn());
//                       },
//                     ),
//                     ProductButton(
//                       text: "Groceries",
//                       onPressed: () {
//                         Get.to(() => const LogIn());
//                       },
//                     ),
//                     ProductButton(
//                       text: "Vegetables",
//                       onPressed: () {
//                         Get.to(() => const LogIn());
//                       },
//                     ),
//                     ProductButton(
//                       text: "Fruit",
//                       onPressed: () {
//                         Get.to(() => const LogIn());
//                       },
//                     ),
//                     ProductButton(
//                       text: "Meat",
//                       onPressed: () {
//                         Get.to(() => const LogIn());
//                       },
//                     ),
//                   ],
//                 )),
//             // Expanded(
//             //   child: GridView.count(
//             //     primary: false,
//             //     padding: const EdgeInsets.all(6),
//             //     crossAxisSpacing: 10,
//             //     mainAxisSpacing: 10,
//             //     crossAxisCount: 2,
//             //     children: List.generate(Category.length, (index) {
//             //       return Center(
//             //         child: ProductPage(
//             //           itemData: Category[index],
//             //         ),
//             //       );
//             //     }),
//             //   ),
//             // ),

//             // Expanded(
//             //   child: GridView.count(
//             //     primary: false,
//             //     padding: const EdgeInsets.all(6),
//             //     crossAxisSpacing: 10,
//             //     mainAxisSpacing: 10,
//             //     crossAxisCount: 2,
//             //     children: List.generate(FavoriteItemListModel.itemImage.length, (index) {
//             //       return ProductPage(index: index);
//             //     }),
//             //   ),
//             // ),

//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, childAspectRatio: 1),
//                 itemCount: ListModel.itemImage.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ProductPage(index: index);
//                 },
//               ),
//             ),

//             SizedBox(
//               height: Dimensions.screenHeight * 0.01,
//             ),
//             const BigText(
//               text: "Recently Viewed",
//               color: AppColors.black,
//               size: 20,
//             ),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Image.asset("assets/images/carrot.png"),
//                     SizedBox(
//                       width: Dimensions.screenWidth * 0.05,
//                     ),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         BigText(
//                             text: "Carrot",
//                             size: 13,
//                             color: AppColors.mainColor),
//                         SmallText(
//                           text: "Vegetable",
//                           color: AppColors.grey,
//                           size: 10,
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       width: Dimensions.screenWidth * 0.25,
//                     ),
//                     const BigText(
//                       text: "\$10.99",
//                       color: AppColors.brown,
//                       size: 18,
//                     )
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
