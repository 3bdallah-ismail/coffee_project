import 'package:flutter/material.dart';

import '../../../../core/routes/app_route_name.dart';
import '../manager/favorites_manager.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = FavoritesManager.favorites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        centerTitle: true,
        backgroundColor: const Color(0xFFD17842),
      ),
      body:
          favorites.isEmpty
              ? const Center(child: Text("No favorites yet."))
              : ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  final coffee = favorites[index];
                  return ListTile(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutesName.detail,
                        arguments: coffee,
                      );
                    },
                    leading: Image.asset(
                      coffee.imagePath,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(coffee.name),
                    subtitle: Text(coffee.type),
                    trailing: Text("\$${coffee.price.toStringAsFixed(2)}"),
                  );
                },
              ),
    );
  }
}
