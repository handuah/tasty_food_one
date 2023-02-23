import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tasty_food_one/styles/styling.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              'https://assets3.lottiefiles.com/packages/lf20_NODCLWy3iX.json',
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
          ],
        ),
      ),
    );
  }
}
