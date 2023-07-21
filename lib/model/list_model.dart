class ListModel {
  // List<String> searchTerms = [
  //   "Vegetables",
  //   "Meat",
  //   "Spinach",
  //   "Red Tomato",
  //   "Watermelons",
  //   "Blueberries",
  //   "Pineapples",
  //   "Strawberries"
  // ];
  static List<String> itemNames = [
    "Red Tomato",
    "Cabbage",
    "Lettuce",
    "Cow Meat",
  ];
  static List<String> itemSubtitle = [
    "Pepper",
    "Vegetables",
    "Fruit",
    "Meat",
  ];
  static List<String> itemImage = [
    'assets/images/red_tomato.png',
    'assets/images/cabbage.png',
    'assets/images/lettuce.png',
    'assets/images/cow_meat.png',
  ];
  static List<String> itemRate = [
    '5.0',
    '4.5',
    '5.0',
    '4.2',
  ];
  static List<String> itemPrice = [
    '10.99',
    '14.99',
    '3.15',
    '26.00',
  ];
  static List<String> itemImage2 = [
    "assets/images/red_tomato2.png",
    "assets/images/lettuce_main.png",
    "assets/images/cabbage_curve.png",
    "assets/images/meat_curve.png",
  ];
  static List<String> itemDescription = [
    "Red tomatoes are sweet and are a major ingredient when making stew for households, their juicy nature make them irresistible and super sweet.",
    "Lettuce are a good source of vitamin, and they are nutritious and beneficial to the human body, use it in your salad to get a great taste",
    "Cabbage are a good source of vitamin, and they are nutritious and beneficial to the human body, use it in your salad to get a great taste",
    "Cow meat is a good source of protein as it is derived from well nourished and cared for cows. Use it in your meals, for your parties, events and even as a snack",
  ];
  static List<String> itemPack = [
    "25 tomatoes in a pack",
    "1 Kilogram in a pack",
    "1 Kilogram in a pack",
    "5 Kilogram in a pack",
  ];

  Item getById(int id) => Item(
        id,
        itemNames[id % itemNames.length],
        itemSubtitle[id % itemSubtitle.length],
        itemImage[id % itemImage.length],
        itemRate[id % itemRate.length],
        itemPrice[id % itemPrice.length],
        itemImage2[id % itemImage2.length],
        itemDescription[id % itemDescription.length],
        itemPack[id % itemPack.length],
      );
  Item getByPosition(int position) {
    return getById(position);
  }
}

class Item {
  final int id;
  final String name;
  final String subtitle;
  final String image;
  final String rate;
  final String price;
  final String image2;
  final String description;
  final String pack;

  const Item(
    this.id,
    this.name,
    this.subtitle,
    this.image,
    this.rate,
    this.price,
    this.image2,
    this.description,
    this.pack,
  );

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
