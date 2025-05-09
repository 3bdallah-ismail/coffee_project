import '../widgets/cart_item.dart';
import 'coffee_data.dart';

class CartManager {
  static final List<CartItem> _cartItems = [];

  static void addToCart(CoffeeData coffee, [String size = 'M']) {
    try {
      final existing = _cartItems.firstWhere(
        (item) => item.coffee == coffee && item.size == size,
      );
      existing.quantity += 1;
    } catch (e) {
      _cartItems.add(CartItem(coffee: coffee, size: size));
    }
  }

  static void removeFromCart(CartItem item) {
    _cartItems.remove(item);
  }

  static List<CartItem> get cartItems => _cartItems;

  static double get totalPrice {
    return _cartItems.fold(
      0,
      (sum, item) => sum + item.coffee.price * item.quantity,
    );
  }
}
