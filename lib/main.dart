import 'package:flutter/material.dart';

import 'screens/startscreen.dart';

void main() {
  runApp(const TastyFoodApp());
}

class TastyFoodApp extends StatelessWidget {
  const TastyFoodApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}
