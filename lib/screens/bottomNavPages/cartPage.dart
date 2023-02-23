import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tasty_food_one/styles/styling.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets6.lottiefiles.com/packages/lf20_47pyyfcf.json',
              height: 200.00,
              width: 200.00,
            ),
            const SizedBox(
              height: 100.0,
            ),
            Text(
              "Coming Soon!",
              style: headingOneStyle.copyWith(
                fontSize: 20.0,
                color: bottomNavInactiveColor,
              ),
            ),
            // Lottie.asset(
            //   'assets/lotties/home-icon.json',
            //   // height: 200.00,
            //   // width: 200.00,
            // ),
          ],
        ),
      ),
    );
  }
}
