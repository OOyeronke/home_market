// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:home_market/screens/cart/item_details.dart';
// import '../../controller/cart_controller.dart';
// import '../../model/market_model.dart';
// import '../../services/item_services.dart';
// import '../../utilities/big_text.dart';
// import '../../utilities/colors.dart';
// import '../../utilities/small_text.dart';
// import '../../widget/dimensions.dart';
// import '../../widget/product_button.dart';
// import '../logging_screens.dart/login_page.dart';
// import '../profile/profile_page.dart';
// import '../search/search_location.dart';

// class HomeyyyPage extends StatefulWidget {
//   @override
//   _HomeyyyPageState createState() => _HomeyyyPageState();
// }

// class _HomeyyyPageState extends State<HomeyyyPage> {
//   ItemServices itemServices = ItemServices();
//   List<MarketItemModel> items = [];
//   final CartPageController controller = Get.put(CartPageController());

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Dimensions().init(context);
//     // TODO: implement build
//     return Scaffold(
//       body: Container(
//           padding: EdgeInsets.only(
//             top: Dimensions.screenHeight * 0.06,
//             left: Dimensions.screenWidth * 0.04,
//             right: Dimensions.screenWidth * 0.04,
//           ),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
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
//             Expanded(
//               child: GetBuilder<CartPageController>(
//                 init: controller,
//                 builder: (_) => controller.isLoading
//                     ? Center(
//                         child: CircularProgressIndicator(),
//                       )
//                     : ShopItemListing(
//                         items: controller.items,
//                       ),
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
//           ])),
//     );
//   }
// }

// class ShopItemListing extends StatelessWidget {
//   final List<MarketItemModel> items;

//   ShopItemListing({required this.items});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 5.0),
//       child: GridView.builder(
//         shrinkWrap: true,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, childAspectRatio: 1),
//         itemCount: 4,
//         itemBuilder: (BuildContext context, int index) {
//           return ItemView(
//             item: items[index],
//           );
//         },
//       ),
//     );
//   }
// }

// class ItemView extends StatelessWidget {
//   final MarketItemModel item;

//   ItemView({
//     required this.item,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(5.0),
//       child: InkResponse(
//           onTap: () {
//             // Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //         builder: (context) => ItemDetailPage(
//             //               itemId: item.id,
//             //             )));
//           },
//           child: Material(
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Row(children: [
//                 Stack(children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: const [
//                         BoxShadow(blurRadius: 5.0, color: Colors.black12),
//                       ],
//                     ),
//                     width: Dimensions.screenWidth * 0.37,
//                     height: Dimensions.screenHeight * 0.2,
//                     child: Image.asset(
//                       item.image,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned(
//                       bottom: Dimensions.screenHeight * 0.01,
//                       right: 0,
//                       left: 0,
//                       top: Dimensions.screenHeight * 0.11,
//                       child: Container(
//                         padding: EdgeInsets.only(
//                           left: Dimensions.screenWidth * 0.01,
//                         ),
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(20),
//                             bottomRight: Radius.circular(20),
//                           ),
//                           color: Colors.white,
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             BigText(
//                               text: item.name,
//                               size: 14,
//                             ),
//                             SmallText(
//                               text: item.subtitle,
//                               size: 10,
//                               color: AppColors.grey,
//                             ),
//                             Row(
//                               children: [
//                                 const Icon(
//                                   Icons.star,
//                                   color: AppColors.orange,
//                                   size: 12,
//                                 ),
//                                 SmallText(
//                                   text: item.rating.toString(),
//                                   size: 12,
//                                   color: AppColors.grey,
//                                 ),
//                                 SizedBox(
//                                   width: Dimensions.screenWidth * 0.1,
//                                 ),
//                                 SmallText(
//                                   text: "\$${item.price.toString()}",
//                                   size: 12,
//                                   color: AppColors.brown,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       )),
//                 ])
//               ]),
//             ]),
//           )),
//     );
//   }
// }
