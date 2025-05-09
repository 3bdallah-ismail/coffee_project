import '../manager/coffee_data.dart';

class CartItem {
  final CoffeeData coffee;
  final String size;
  int quantity;

  CartItem({required this.coffee, required this.size, this.quantity = 1});
}
