class Product {
  final String id;
  final String sku;
  final String name;
  final String description;
  final double price;
  final String image;
  final double rating;

  Product({
    required this.id,
    required this.sku,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      sku: json['sku'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      image: json['image'],
      rating: json['rating'].toDouble(),
    );
  }
}