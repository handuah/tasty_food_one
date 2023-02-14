import 'package:flutter/material.dart';
import 'package:tasty_food_one/screens/bottomNavPages/accountPage.dart';
import 'package:tasty_food_one/screens/bottomNavPages/cartPage.dart';
import 'package:tasty_food_one/screens/bottomNavPages/explorePage.dart';
import 'package:tasty_food_one/screens/bottomNavPages/homePage.dart';
import 'package:tasty_food_one/styles/styling.dart';

class BottomNavigationParent extends StatefulWidget {
  const BottomNavigationParent({Key? key}) : super(key: key);

  @override
  State<BottomNavigationParent> createState() => _BottomNavigationParentState();
}

class _BottomNavigationParentState extends State<BottomNavigationParent> {
  int pageIndex = 0;
  List pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80.0,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_outlined),
                ),
                Text(
                  "Home",
                  style: normalTextStyle.copyWith(
                    fontSize: 12.0,
                    color: bottomNavActiveColor,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.explore_off_outlined),
                ),
                Text(
                  "Explore",
                  style: normalTextStyle.copyWith(
                    fontSize: 12.0,
                    color: bottomNavActiveColor,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shop_2_outlined),
                ),
                Text(
                  "Cart",
                  style: normalTextStyle.copyWith(
                    fontSize: 12.0,
                    color: bottomNavActiveColor,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_add_alt_1_outlined),
                ),
                Text(
                  "Account",
                  style: normalTextStyle.copyWith(
                    fontSize: 12.0,
                    color: bottomNavActiveColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
