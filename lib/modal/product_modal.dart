class Product {
  String image;
  String use;
  String name;
  String star;
  String price;

  Product({
    required this.image,
    required this.use,
    required this.name,
    required this.star,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'use': use,
      'star': star,
      'price': price,
      'image': image,
    };
  }
}
