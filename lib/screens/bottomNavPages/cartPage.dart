import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tasty_food_one/styles/styling.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets10.lottiefiles.com/packages/lf20_uDVm72EyvR.json',
              height: 200.00,
              width: 200.00,
            ),
            Lottie.asset(
              'assets/lotties/home-icon.json',
              // height: 200.00,
              // width: 200.00,
            ),
          ],
        ),
      ),
    );
  }
}
