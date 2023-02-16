import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tasty_food_one/styles/styling.dart';
import 'package:tasty_food_one/utils/food_card_data.dart';

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
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 230.0,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                itemBuilder: (context, int foodCardIndex) => foodCard(
                  context,
                  // "https://thumbs.dreamstime.com/b/italian-pizza-white-background-isolated-italian-pizza-white-background-146709376.jpg",
                  foodCardData[foodCardIndex]['foodImgUrl'],
                  // "Meat Lovers Pizza",
                  foodCardData[foodCardIndex]['foodName'],
                  foodCardData[foodCardIndex]['foodCost'],
                ),
                separatorBuilder: (context, int foodCardIndex) =>
                    const SizedBox(
                  width: 10.0,
                ),
                itemCount: foodCardData.length,
                scrollDirection: Axis.horizontal,
              ),
              color: HexColor("#FFFFFF"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 230.0,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                itemBuilder: (context, int foodCardIndex) => foodCard(
                  context,
                  // "https://thumbs.dreamstime.com/b/italian-pizza-white-background-isolated-italian-pizza-white-background-146709376.jpg",
                  foodCardData[foodCardIndex]['foodImgUrl'],
                  // "Meat Lovers Pizza",
                  foodCardData[foodCardIndex]['foodName'],
                  foodCardData[foodCardIndex]['foodCost'],
                ),
                separatorBuilder: (context, int foodCardIndex) =>
                    const SizedBox(
                  width: 10.0,
                ),
                itemCount: foodCardData.length,
                scrollDirection: Axis.horizontal,
              ),
              color: HexColor("#FFFFFF"),
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

  SizedBox foodCard(
      BuildContext context, String imgUrl, String foodName, double foodAmt) {
    return SizedBox(
      height: 150.0,
      width: 160.0,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        // color: bottomNavActiveColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: brightOrangeColor,
                    size: 10.0,
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    "4.5",
                    style: headingOneStyle.copyWith(
                      color: HexColor("##76777C"),
                      fontWeight: FontWeight.w100,
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 120.0,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  // "https://thumbs.dreamstime.com/b/italian-pizza-white-background-isolated-italian-pizza-white-background-146709376.jpg",
                  imgUrl,
                  fit: BoxFit.fill,
                ),
                color: bottomNavInactiveColor,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                // "Meat Lovers Pizza",
                foodName,
                style: normalTextStyle.copyWith(
                  color: HexColor("##76777C"),
                  fontWeight: FontWeight.w200,
                  fontSize: 10.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // r'$10.11', //means of writing raw text in flutter
                    "\$$foodAmt",
                    style: headingOneStyle.copyWith(
                      color: HexColor("#76777C"),
                      fontWeight: FontWeight.w200,
                      fontSize: 15.0,
                    ),
                  ),
                  Icon(
                    Icons.add_circle_rounded,
                    color: brightOrangeColor,
                    size: 20.0,
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
