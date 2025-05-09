import 'package:flutter/material.dart';

import '../../core/custom_btn.dart';
import '../../core/routes/app_route_name.dart';
import '../layout/screens/manager/cart_manager.dart';
import '../layout/screens/manager/coffee_data.dart';
import '../layout/screens/manager/favorites_manager.dart';
import '../layout/screens/widgets/select_size.dart';

class CoffeeDetailScreen extends StatefulWidget {
  const CoffeeDetailScreen({super.key});

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedSize = 'M';
    CoffeeData coffeeData =
        ModalRoute.of(context)!.settings.arguments as CoffeeData;
    bool isFavourite = FavoritesManager.isFavorite(coffeeData);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutesName.layout);
          },
        ),
        centerTitle: true,
        title: const Text("Detail", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(
              isFavourite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () {
              setState(() {
                if (isFavourite) {
                  FavoritesManager.removeFromFavorites(coffeeData);
                } else {
                  handleAddToFavorites(context, coffeeData);
                }
              });
            },
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(coffeeData.imagePath, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              coffeeData.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(coffeeData.type, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                const SizedBox(width: 4),
                Text(
                  "${coffeeData.rating} ",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Description",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              coffeeData.description,
              style: TextStyle(color: Colors.grey[700]),
            ),
            const Text("Read More", style: TextStyle(color: Colors.orange)),
            const SizedBox(height: 16),
            const Text("Size", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Center(
              child: SizeSelector(
                onSizeSelected: (size) {
                  selectedSize = size;
                },
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                const Text("Price", style: TextStyle(color: Colors.grey)),
                const Spacer(),
                Text(
                  "\$ ${coffeeData.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomBtn(
              onPressed: () {
                CartManager.addToCart(coffeeData, selectedSize);
                showDialog(
                  context: context,
                  builder:
                      (_) => AlertDialog(
                        title: const Text("Added to Cart"),
                        content: Text(
                          "${coffeeData.name} ($selectedSize) added to cart.",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("OK"),
                          ),
                        ],
                      ),
                );
              },
              text: "Buy Now",
            ),
          ],
        ),
      ),
    );
  }
}
