import 'package:flutter/material.dart';

import '../../../../core/custom_btn.dart';
import '../manager/cart_manager.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartItems = CartManager.cartItems;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        backgroundColor: const Color(0xFFD17842),
      ),
      body:
          cartItems.isEmpty
              ? const Center(child: Text("Your cart is empty."))
              : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        final item = cartItems[index];
                        return ListTile(
                          leading: Image.asset(
                            item.coffee.imagePath,
                            width: 50,
                            height: 50,
                          ),
                          title: Text("${item.coffee.name} (${item.size})"),
                          subtitle: Text("x${item.quantity}"),
                          trailing: Text(
                            "\$${(item.coffee.price * item.quantity).toStringAsFixed(2)}",
                          ),
                          onLongPress: () {
                            setState(() {
                              CartManager.removeFromCart(item);
                            });
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Total:",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$${CartManager.totalPrice.toStringAsFixed(2)}",
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        CustomBtn(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Order placed successfully!"),
                              ),
                            );
                            setState(() {
                              CartManager.cartItems.clear();
                            });
                          },
                          text: "Checkout",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
