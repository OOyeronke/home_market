var data = [
//List<String> foodData = [
  {
    "name": "Red Tomato",
    "price": 25.0,
    "fav": false,
    "rating": 4.5,
    "image": 'assets/images/red_tomato.png',
    "subtitle": "Vegetables",
  },
  {
    "name": "Cabbage",
    "price": 200.0,
    "fav": false,
    "rating": 4.5,
    "image": 'assets/images/cabbage.png',
    "subtitle": "Vegetables",
  },
  {
    "name": "Lettuce",
    "price": 299.0,
    "fav": false,
    "rating": 4.5,
    "image": 'assets/images/lettuce.png',
    "subtitle": "Vegetables",
  },
  {
    "name": "Cow Meat",
    "price": 3001.0,
    "fav": false,
    "rating": 3.5,
    "image": 'assets/images/lettuce.png',
    "subtitle": "Meat",
  },
  {
    "name": "Ugly Shoe Trends 2018",
    "price": 25.0,
    "fav": false,
    "rating": 4.5,
    "image": 'assets/images/lettuce.png',
    "subtitle": "Vegetables",
  },
  {
    "name": "Nordstrom",
    "price": 214.0,
    "fav": false,
    "rating": 4.0,
    "image": 'assets/images/lettuce.png',
    "subtitle": "Vegetables",
  },
  {
    "name": "ShoeGuru",
    "price": 205.0,
    "fav": false,
    "rating": 4.0,
    "image": 'assets/images/lettuce.png',
    "subtitle": "Vegetables",
  },
  {
    "name": "Shoefly black",
    "price": 200.0,
    "fav": false,
    "rating": 4.9,
    "image": 'assets/images/lettuce.png',
    "subtitle": "Vegetables",
  }
];

class MarketItemModel {
  String name;
  String subtitle;
  double price;
  bool fav;
  double rating;
  String image;
  int id;
  int? shopId;

  MarketItemModel(
      {this.shopId,
      required this.id,
      required this.fav,
      required this.rating,
      required this.price,
      required this.image,
      required this.name,
      required this.subtitle});

  factory MarketItemModel.fromJson(Map<String, dynamic> json) {
    return MarketItemModel(
      id: json['id'],
      fav: json['fav'] == 1,
      rating: json['rating'],
      price: json['price'],
      image: json['image'],
      name: json['name'],
      subtitle: json['subtitle'],
      shopId: json['shop_id'] ?? 0,
    );
  }
}
