// final List<String> mealClass = [
//   {
//     "foodName": "Spinach",
//     "foodClass": "Vegetables",
//     "picture": "assets/images/spinach_s.png",
//     "price": "21.99",
//   },
//   "Meat",
//   "Fruits",
//   "Groceries",
//   "All",
// ];

// const mealClass2 = [
//   {
//     'image': 'red_tomato.png',
//     'name': 'Red Tomato',
//     'class': 'Vegetables',
//     'rating': '(5.0)',
//     'price': 10.99,
//     'currency': '\$',
//   },
//   {
//     'image': 'lettuce.png',
//     'name': 'Lettuce',
//     'class': 'Vegetables',
//     'rating': '(4.5)',
//     'price': 14.99,
//     'currency': '\$',
//   },
//   {
//     'image': 'cabbage.png',
//     'name': 'Cabbage',
//     'class': 'Vegetables',
//     'rating': '(5.0)',
//     'price': 3.15,
//     'currency': '\$',
//   },
//   {
//     'image': 'cow_meat.png',
//     'name': 'Cow Meat',
//     'class': 'Meat',
//     'rating': '(4.2)',
//     'price': 26.00,
//     'currency': '\$',
//   },
// ];

final List<String> suggestedMeal = [
  "Vegetables",
  "Meat",
  "Fruits",
  "Groceries",
  "All"
];

class Food {
  final String foodName;
  final String foodClass;
  final String price;
  final String picture;

  Food({
    required this.foodName,
    required this.foodClass,
    required this.price,
    required this.picture,
  });
}

List<Food> foodData = [
  Food(
    foodName: "Spinach",
    foodClass: "Vegetable",
    picture: "assets/images/spinach_s.png",
    price: "21.99",
  ),
  Food(
    foodName: "Carrot",
    foodClass: "Fruit",
    picture: "assets/images/carrot.png",
    price: "21.99",
  ),
  Food(
    foodName: "Banana",
    foodClass: "Fruit",
    picture: "assets/images/banana.png",
    price: "21.99",
  ),
  Food(
    foodName: "Cabbage",
    foodClass: "Vegetable",
    picture: "assets/images/cabbage_s.png",
    price: "21.99",
  ),
  Food(
    foodName: "Lettuce",
    foodClass: "Vegetable",
    picture: "assets/images/lettuce_s.png",
    price: "21.99",
  ),
  Food(
    foodName: "Lemon",
    foodClass: "Fruit",
    picture: "assets/images/lemon.png",
    price: "21.99",
  ),
  Food(
    foodName: "Cow Meat",
    foodClass: "Meat",
    picture: "assets/images/lettuce_s.png",
    price: "21.99",
  ),
  Food(
    foodName: "Celery",
    foodClass: "Vegetable",
    picture: "assets/images/celery_s.png",
    price: "21.99",
  ),
  Food(
    foodName: "Red Tomato",
    foodClass: "Tomato",
    picture: "assets/images/red_tomato.png",
    price: "21.99",
  ),
];

//   const Food(this.foodName, this.price, this.picture, this.foodClass);
// }

// final List<Food> mealClass = _mealClass
//     .map((e) => Food(e['foodName'], e['price'], e['picture'], e['foodClass']))
//     .toList(growable: false);

// final List<Map<String, dynamic>> _mealClass = [
//   {
//     "foodName": "Spinach",
//     "foodClass": "Vegetables",
//     "picture": "assets/images/spinach_s.png",
//     "price": "21.99",
//   },
//   {
//     "foodName": "Lettuce",
//     "foodClass": "Vegetables",
//     "picture": "assets/images/lettuce_s.png",
//     "price": "21.99",
//   },
//   {
//     "foodName": "Carrot",
//     "foodClass": "Vegetables",
//     "picture": "assets/images/carrot_s.png",
//     "price": "21.99",
//   },
// ];

class Student {
  final int id;
  final String name;

  Student({required this.id, required this.name});
}

List<Student> studentsData = [
  Student(name: "Ahmad", id: 1),
  Student(name: "Ali", id: 2),
  Student(name: "Samer", id: 3),
  Student(name: "Mohamad", id: 4),
];
