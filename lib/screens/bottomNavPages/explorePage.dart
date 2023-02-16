import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tasty_food_one/styles/styling.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List foodCategoriesBtns = ["All", "Burgers", "Pizza", "Drinks", "Pasta"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          children: [
            Text(
              "Explore tasty food",
              style: headingOneStyle.copyWith(
                color: bottomNavActiveColor,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            searchBar(context),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 30.0,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                itemBuilder: (context, int foodTypeIndex) => foodCatBtns(
                  context,
                  foodCategoriesBtns[foodTypeIndex],
                ),
                separatorBuilder: (context, int foodCardIndex) =>
                    const SizedBox(
                  width: 10.0,
                ),
                itemCount: foodCategoriesBtns.length,
                scrollDirection: Axis.horizontal,
              ),
              color: whiteColor,
            ),
          ],
        ),
      ),
    );
  }

  TextField searchBar(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
        ),
        filled: true,
        fillColor: HexColor('#F7F7F7'),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        hintText: 'Search food, drinks....',
        hintStyle: normalTextStyle.copyWith(
          color: Colors.grey,
          fontSize: 14.0,
        ),
      ),
    );
  }

  SizedBox foodCatBtns(BuildContext context, String foodCatName) {
    return SizedBox(
      height: 20.0,
      width: 80.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: bottomNavActiveColor,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () {},
        child: Text(
          foodCatName,
          softWrap: true,
          style: normalTextStyle.copyWith(
            fontWeight: FontWeight.w100,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
