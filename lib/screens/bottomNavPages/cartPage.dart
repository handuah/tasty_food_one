import 'package:flutter/material.dart';
import 'package:tasty_food_one/styles/styling.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Center(
        child: Text('cart'),
      ),
    );
  }
}
