import 'package:flutter/material.dart';
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
      backgroundColor: orangeColor,
      body: Center(
        child: Text('Account'),
      ),
    );
  }
}
