import 'package:coffee_project/modules/layout/screens/pages/cart_screen.dart';
import 'package:coffee_project/modules/layout/screens/pages/favourite_screen.dart';
import 'package:coffee_project/modules/layout/screens/pages/home_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    const FavouriteScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        elevation: 0,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        selectedItemColor: const Color(0xFFD17842),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 20,

        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
