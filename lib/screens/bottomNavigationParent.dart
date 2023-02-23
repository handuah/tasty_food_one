import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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

class _BottomNavigationParentState extends State<BottomNavigationParent>
    with TickerProviderStateMixin {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const AccountPage()
  ];

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //makes bottomnav border radius visible
      body: pages[pageIndex], //the pages
      bottomNavigationBar: Theme(
        data: ThemeData(
          primaryColor: const Color(0xff2F8D46),
          splashColor: Colors.red,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: Container(
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: SizedBox(
                      // color: orangeColor,
                      height: 50.0,
                      width: 50.0,
                      child: Lottie.network(
                        'https://assets8.lottiefiles.com/packages/lf20_o8btuiyj.json',
                        fit: BoxFit.contain,
                        animate: pageIndex == 0 ? true : false,
                      ),
                    ),
                  ),
                  Text(
                    "Home",
                    style: normalTextStyle.copyWith(
                      fontSize: 12.0,
                      color: pageIndex == 0
                          ? bottomNavActiveColor
                          : bottomNavInactiveColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    child: SizedBox(
                      // color: orangeColor,
                      height: 50.0,
                      width: 50.0,
                      child: Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_tk3k6c0j.json',
                        fit: BoxFit.contain,
                        animate: pageIndex == 1 ? true : false,
                      ),
                    ),
                  ),
                  Text(
                    "Explore",
                    style: normalTextStyle.copyWith(
                      fontSize: 12.0,
                      color: pageIndex == 1
                          ? bottomNavActiveColor
                          : bottomNavInactiveColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    child: SizedBox(
                      // color: orangeColor,
                      height: 50.0,
                      width: 50.0,
                      child: Lottie.network(
                        'https://assets10.lottiefiles.com/private_files/lf30_xdjeaghh.json',
                        fit: BoxFit.contain,
                        animate: pageIndex == 2 ? true : false,
                      ),
                    ),
                  ),
                  Text(
                    "Cart",
                    style: normalTextStyle.copyWith(
                      fontSize: 12.0,
                      color: pageIndex == 2
                          ? bottomNavActiveColor
                          : bottomNavInactiveColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    child: SizedBox(
                      // color: orangeColor,
                      height: 50.0,
                      width: 50.0,
                      child: Lottie.network(
                        'https://assets2.lottiefiles.com/packages/lf20_n5icqxkw.json',
                        fit: BoxFit.contain,
                        animate: pageIndex == 3 ? true : false,
                      ),
                    ),
                  ),
                  Text(
                    "Account",
                    style: normalTextStyle.copyWith(
                      fontSize: 12.0,
                      color: pageIndex == 3
                          ? bottomNavActiveColor
                          : bottomNavInactiveColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
