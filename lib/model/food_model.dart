class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final String pack;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  final String image2;
  bool isFavorated;
  final String description;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.plantName,
      required this.size,
      required this.rating,
      required this.pack,
      required this.temperature,
      required this.imageURL,
      required this.image2,
      required this.isFavorated,
      required this.description,
      required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 22,
        category: 'Vegetable',
        plantName: 'Red Tomato',
        size: 'Small',
        rating: 4.5,
        pack: "25 tomatoes in a pack",
        temperature: '23 - 34',
        imageURL: 'assets/images/red_tomato.png',
        image2: 'assets/images/red_tomato2.png',
        isFavorated: true,
        description:
            'Red tomatoes are sweet and are a major ingredient when making stew for households,'
            'their juicy nature make them irresistible and super sweet.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        category: 'Vegetable',
        plantName: 'Cabbage',
        size: 'Medium',
        rating: 4.8,
        pack: "1 Kilogram in a pack",
        temperature: '19 - 22',
        imageURL: 'assets/images/cabbage.png',
        image2: 'assets/images/cabbage_curve.png',
        isFavorated: false,
        description:
            'Cabbage are a good source of vitamin, and they are nutritious and beneficial'
            ' to the human body, use it in your salad to get a great taste',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        category: 'Vegetable',
        plantName: 'Lettuce',
        size: 'Large',
        rating: 4.7,
        pack: "1 Kilogram in a pack",
        temperature: '22 - 25',
        imageURL: 'assets/images/lettuce.png',
        image2: 'assets/images/lettuce_main.png',
        isFavorated: false,
        description:
            'Lettuce are a good source of vitamin, and they are nutritious and beneficial'
            'to the human body, use it in your salad to get a great taste',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        category: 'Meat',
        plantName: 'Cow Meat',
        size: 'Small',
        rating: 4.5,
        pack: "5 Kilogram in a pack",
        temperature: '23 - 28',
        imageURL: 'assets/images/cow_meat.png',
        image2: 'assets/images/meat_curve.png',
        isFavorated: false,
        description:
            'Cow meat is a good source of protein as it is derived from well nourished and cared for cows.'
            ' Use it in your meals, for your parties, events and even as a snack',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        category: 'Vegetable',
        plantName: 'Celery',
        size: 'Large',
        rating: 4.1,
        pack: "1 Kilogram in a pack",
        temperature: '12 - 16',
        imageURL: 'assets/images/celery.png',
        image2: 'assets/images/red_tomato_c.png',
        isFavorated: true,
        description:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        category: 'Fruit',
        plantName: 'Lemon',
        size: 'Medium',
        rating: 4.4,
        pack: "1 Kilogram in a pack",
        temperature: '15 - 18',
        imageURL: 'assets/images/lemon.png',
        image2: 'assets/images/red_tomato_c.png',
        isFavorated: false,
        description:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        category: 'Fruit',
        plantName: 'Banana',
        size: 'Small',
        rating: 4.2,
        pack: "1 Kilogram in a pack",
        temperature: '23 - 26',
        imageURL: 'assets/images/plant-six.png',
        image2: 'assets/images/red_tomato_c.png',
        isFavorated: false,
        description:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        category: 'Vegetable',
        plantName: 'Pepper',
        size: 'Medium',
        rating: 4.5,
        pack: "1 Kilogram in a pack",
        temperature: '21 - 24',
        imageURL: 'assets/images/plant-seven.png',
        image2: 'assets/images/red_tomato_c.png',
        isFavorated: false,
        description:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        category: 'Vegetable',
        plantName: 'Spinach',
        size: 'Medium',
        rating: 4.7,
        pack: "1 Kilogram in a pack",
        temperature: '21 - 25',
        imageURL: 'assets/images/plant-eight.png',
        image2: 'assets/images/red_tomato_c.png',
        isFavorated: false,
        description:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
  ];

  // factory Plant.fromJson(Map<String, dynamic> json) {
  //   return Plant(
  // category: json['category'],
  // description: json['description'],
  // pack: json['pack'],
  // imageURL: json['imageURL'],
  // isFavorated: json['isFavorated'] == 1,
  // isSelected: json['isSelected'] == 1,
  // plantId: json['plantId'] ?? 0,
  // plantName: json['plantName'],
  // price: json['price'],
  // rating: json['rating'],
  // size: json['size'],
  // temperature: json['temperature'],
  //   );
  // }

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
