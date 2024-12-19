import 'package:flutter/material.dart';
import 'package:lab/product/product_card.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search products',
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt, color: Colors.grey),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Product Grid
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(), // Prevent GridView scrolling independently
                shrinkWrap: true, // Let GridView take only the necessary height
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: 20, // Example product count
                itemBuilder: (context, index) {
                  return const ProductCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}