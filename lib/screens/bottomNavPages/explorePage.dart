import 'package:flutter/material.dart';
import 'package:tasty_food_one/styles/styling.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Center(
        child: Text('Explore'),
      ),
    );
  }
}
