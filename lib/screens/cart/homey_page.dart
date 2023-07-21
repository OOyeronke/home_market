import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/food_model.dart';
import '../../repository/auth_repository/authentication_repository.dart';
import '../../utilities/big_text.dart';
import '../../utilities/colors.dart';
import '../../utilities/small_text.dart';
import '../../widget/dimensions.dart';
import '../profile/profile_page.dart';
import '../search/search_location.dart';
import 'item_details.dart';

class HomeyPage extends StatefulWidget {
  const HomeyPage({Key? key}) : super(key: key);

  @override
  State<HomeyPage> createState() => _HomeyPageState();
}

class _HomeyPageState extends State<HomeyPage> {
  @override
  Widget build(BuildContext context) {
    Dimensions().init(context);
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    List<Plant> _plantList = Plant.plantList;

    //Plants category
    List<String> _plantTypes = [
      'All',
      'Groceries',
      'Vegetables',
      'Meat',
      'Fruit',
    ];
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(
        top: Dimensions.screenHeight * 0.06,
        left: Dimensions.screenWidth * 0.04,
        right: Dimensions.screenWidth * 0.04,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: "Welcome",
                    size: 14,
                  ),
                  BigText(
                    text: "May Valerie",
                    size: 20,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFF8DBF2C),
                ),
                child: GestureDetector(
                  onTap: () {
                    AuthenticationRepository.instance.Logout();
                  },
                  // onTap: () {
                  //   Get.to(() => ProfilePage());
                  // },
                  child: Image.asset(
                    "assets/images/carrot.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: Dimensions.screenWidth * 0.9,
            height: Dimensions.screenHeight * 0.06,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 5.0, color: Colors.black12),
              ],
            ),
            child: OutlinedButton.icon(
                label: const Text(
                  "Search",
                ),
                icon: const Icon(Icons.search),
                style: OutlinedButton.styleFrom(
                  primary: AppColors.grey,
                  alignment: Alignment.centerLeft,
                  side: const BorderSide(color: Colors.transparent),
                ),
                onPressed: () {
                  Get.to(() => SearchLocation());
                }),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.symmetric(
          //         horizontal: 16.0,
          //       ),
          //       width: size.width * .9,
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Icon(
          //             Icons.search,
          //             color: Colors.black54.withOpacity(.6),
          //           ),
          //           const Expanded(
          //               child: TextField(
          //             showCursor: false,
          //             decoration: InputDecoration(
          //               hintText: 'Search Plant',
          //               border: InputBorder.none,
          //               focusedBorder: InputBorder.none,
          //             ),
          //           )),
          //           Icon(
          //             Icons.mic,
          //             color: Colors.black54.withOpacity(.6),
          //           ),
          //         ],
          //       ),
          // decoration: BoxDecoration(
          //   color: Colors.blue.withOpacity(.1),
          //   borderRadius: BorderRadius.circular(20),
          // ),
          //   ),
          // ],
          //),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 50.0,
            width: size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _plantTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Text(
                        _plantTypes[index],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: selectedIndex == index
                              ? FontWeight.bold
                              : FontWeight.w300,
                          color: selectedIndex == index
                              ? AppColors.mainColor
                              : AppColors.grey,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ]),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return ItemView(
                plantId: _plantList[index].plantId,
              );
            },
          ),
        )),
        SizedBox(
          height: Dimensions.screenHeight * 0.01,
        ),
        const BigText(
          text: "Recently Viewed",
          color: AppColors.black,
          size: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/carrot.png"),
                SizedBox(
                  width: Dimensions.screenWidth * 0.05,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                        text: "Carrot", size: 13, color: AppColors.mainColor),
                    SmallText(
                      text: "Vegetable",
                      color: AppColors.grey,
                      size: 10,
                    )
                  ],
                ),
                SizedBox(
                  width: Dimensions.screenWidth * 0.25,
                ),
                const BigText(
                  text: "\$10.99",
                  color: AppColors.brown,
                  size: 18,
                )
              ],
            )
          ],
        )
      ]),
    ));
  }
}

class ItemView extends StatelessWidget {
  final int plantId;

  ItemView({
    required this.plantId,
  });

  @override
  Widget build(BuildContext context) {
    List<Plant> _plantList = Plant.plantList;
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkResponse(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemDetailPage(
                          plantId: plantId,
                        )));
          },
          child: Material(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0, color: Colors.black12),
                      ],
                    ),
                    width: Dimensions.screenWidth * 0.40,
                    height: Dimensions.screenHeight * 0.23,
                    child: Image.asset(
                      _plantList[plantId].imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: Dimensions.screenHeight * 0.01,
                      right: 0,
                      left: 0,
                      top: Dimensions.screenHeight * 0.12,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: Dimensions.screenWidth * 0.01,
                        ),
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
                              text: _plantList[plantId].humidity.toString(),
                              size: 14,
                            ),
                            SmallText(
                              text: _plantList[plantId].humidity.toString(),
                              size: 10,
                              color: AppColors.grey,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: AppColors.orange,
                                  size: 12,
                                ),
                                SmallText(
                                  text: _plantList[plantId].humidity.toString(),
                                  size: 12,
                                  color: AppColors.grey,
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth * 0.1,
                                ),
                                SmallText(
                                  text: _plantList[plantId].humidity.toString(),
                                  size: 12,
                                  color: AppColors.brown,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ])
              ]),
            ]),
          )),
    );
  }
}
