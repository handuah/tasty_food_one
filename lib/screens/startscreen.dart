import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tasty_food_one/screens/welcomepage.dart';
import 'package:tasty_food_one/styles/styling.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1B1C1E"),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            );
          },
          child: EasyRichText(
            "Tasty Food",
            textAlign: TextAlign.center,
            defaultStyle: headingOneStyle,
            patternList: [
              EasyRichTextPattern(
                targetString: 'Tasty',
                style: headingOneStyle.copyWith(
                    color: orangeColor, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
