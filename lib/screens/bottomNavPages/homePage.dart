import 'package:flutter/material.dart';
import 'package:tasty_food_one/styles/styling.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
