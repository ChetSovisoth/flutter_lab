import 'dart:ffi';

class Product {
  final String id;
  final String sku;
  final String name;
  final String description;
  final String image;
  final int price;
  final Float rating;

  const Product({
    required this.id,
    required this.sku,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': String id,
        'sku': String sku,
        'name': String name,
        'description': String description,
        'image': String image,
        'price': int price,
        'rating': Float rating,
      } =>
        Product(
          id: id,
          sku: sku,
          name: name,
          description: description,
          image: image,
          price: price,
          rating: rating,
        ),
      _ => throw const FormatException('Failed to load product.'),
    };
  }
}
