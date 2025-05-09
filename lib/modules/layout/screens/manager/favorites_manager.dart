import 'package:flutter/material.dart';

import '../pages/favourite_screen.dart';
import 'coffee_data.dart';


class FavoritesManager {
  static final List<CoffeeData> _favorites = [];

  static void addToFavorites(CoffeeData coffee) {
    if (!_favorites.contains(coffee)) {
      _favorites.add(coffee);
    }
  }

  static List<CoffeeData> get favorites => _favorites;

  static bool isFavorite(CoffeeData coffee) {
    return _favorites.contains(coffee);
  }

  static void removeFromFavorites(CoffeeData coffee) {
    _favorites.remove(coffee);
  }
}

void handleAddToFavorites(BuildContext context, CoffeeData coffee) {
  FavoritesManager.addToFavorites(coffee);

  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: const Text('Added to Favorites'),
          content: Text('${coffee.name} has been added to your favorites.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavouriteScreen(),
                  ),
                );
              },
              child: const Text('View Favorites'),
            ),
          ],
        ),
  );
}
