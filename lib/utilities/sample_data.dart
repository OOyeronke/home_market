const Category = [
//List<Map<String, String>> Category = [
  {
    "image": 'assets/images/red_tomato.png',
    "name": 'Red Tomato',
    "catClass": 'Vegetables',
    "rating": '(5.0)',
    "price": "10.99",
    "currency": '\$',
    "des": "Description",
    "description":
        "Red tomatoes are sweet and are a major ingredient when making stew for households, their juicy nature make them irresistible and super sweet.",
    "pack": "25 tomatoes in a pack",
    "image2": "assets/images/red_tomato2.png",
  },
  {
    "image": 'assets/images/lettuce.png',
    "name": 'Lettuce',
    "catClass": 'Vegetables',
    "rating": '(4.5)',
    "price": "14.99",
    "currency": '\$',
    "des": "Description",
    "description":
        "Lettuce are a good source of vitamin, and they are nutritious and beneficial to the human body, use it in your salad to get a great taste",
    "pack": "1 Kilogram in a pack",
    "image2": "assets/images/lettuce_main.png",
  },
  {
    "image": 'assets/images/cabbage.png',
    "name": 'Cabbage',
    "catClass": 'Vegetables',
    "rating": '(5.0)',
    "price": "3.15",
    "currency": '\$',
    "des": "Description",
    "description":
        "Cabbage are a good source of vitamin, and they are nutritious and beneficial to the human body, use it in your salad to get a great taste",
    "pack": "1 Kilogram in a pack",
    "image2": "assets/images/cabbage_curve.png",
  },
  {
    "image": 'assets/images/cow_meat.png',
    "name": 'Cow Meat',
    "catClass": 'Meat',
    "rating": '(4.2)',
    "price": "26.00",
    "currency": '\$',
    "des": "Description",
    "description":
        "Cow meat is a good source of protein as it is derived from well nourished and cared for cows. Use it in your meals, for your parties, events and even as a snack",
    "pack": "5 Kilogram in a pack",
    "image2": "assets/images/meat_curve.png",
  },
];
// class Category {
//   static List<String> name = [
//     "Red Tomato"
//         "Cabbage"
//         "Pepper"
//         "Spinach"
//         "Celery"
//         "Carrot"
//         "Lettuce"
//         "Banana"
//   ];
//   static List<String> catClass = [
//     "Tomato"
//         "Pepper"
//         "Vegetables"
//         "Vegetables"
//         "Fruit"
//         "Vegetables"
//         "Fruit"
//   ];
//   static List<String> image = [
//     ("assets/images/red_tomato.png"),
//     ("assets/images/cabbage.png"),
//     ("assets/images/pepper.png"),
//     ("assets/images/spinach.png"),
//     ("assets/images/celery.png"),
//     ("assets/images/carrot.png"),
//     ("assets/images/lettuce.png"),
//     ("assets/images/banana.png"),
//   ];

//   Item getById(int id) => Item(
//         id,
//         name[id % name.length],
//         catClass[id % catClass.length],
//         image[id % image.length],
//       );
//   Item getByPosition(int position) {
//     return getById(position);
//   }
// }

// class Item {
//   final int id;
//   final String name;
//   final String catClass;
//   final String image;

//   const Item(
//     this.id,
//     this.name,
//     this.catClass,
//     this.image,
//   );

//   @override
//   int get hashCode => id;

//   @override
//   bool operator ==(Object other) => other is Item && other.id == id;
// }
