class Product {
  final int id;
  final String name, description;
  final double price, rate;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
  });

  factory Product.fromJSON(dynamic json) {
    return Product(
      id: json["Product ID"],
      name: json["Name"],
      description: json["Description"],
      price: json["Price"].toDouble(),
      rate: json["Rating Avg"].toDouble(),
    );
  }
}
