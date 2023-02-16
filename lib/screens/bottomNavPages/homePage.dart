import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          children: [
            userAndLocation(context), //added context to clean error
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "What are you craving?",
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
            promoCard(context),
            const SizedBox(
              height: 5.0,
            ),
            dotsRow(context),
            const SizedBox(
              height: 10.0,
            ),
            popularFoodsAndBtn(context),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 230.0,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                itemBuilder: (context, int foodCardIndex) => foodCard(
                    context,
                    "https://thumbs.dreamstime.com/b/italian-pizza-white-background-isolated-italian-pizza-white-background-146709376.jpg",
                    "Meat Lovers Pizza",
                    10.00),
                separatorBuilder: (context, int foodCardIndex) =>
                    const SizedBox(
                  width: 10.0,
                ),
                itemCount: 8,
                scrollDirection: Axis.horizontal,
              ),
              color: HexColor("#FFFFFF"),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Row userAndLocation(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            "https://w7.pngwing.com/pngs/129/292/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png",
          ),
          maxRadius: 30.0,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deliver To ",
                style: normalTextStyle.copyWith(
                  fontSize: 12.0,
                  color: bottomNavInactiveColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: brightOrangeColor,
                    size: 15.0,
                  ),
                  Text(
                    "Oxford St, Accra ",
                    style: normalTextStyle.copyWith(
                      fontSize: 14.0,
                      color: bottomNavActiveColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 120.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.notifications_none_outlined,
                color: bottomNavActiveColor,
                size: 30.0,
              ),
            ],
          ),
        ),
      ],
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

  Container promoCard(BuildContext context) {
    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(25.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "30%",
                  style: headingOneStyle.copyWith(
                    fontWeight: FontWeight.w100,
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  "Special Discount",
                  style: normalTextStyle.copyWith(
                    fontWeight: FontWeight.w100,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  "Valid Today",
                  style: normalTextStyle.copyWith(
                    fontWeight: FontWeight.w100,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  height: 30.0,
                  width: 120.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: bottomNavActiveColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Claim Vouchers",
                      softWrap: true,
                      style: normalTextStyle.copyWith(
                        fontWeight: FontWeight.w100,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image.network(
              "https://assets.stickpng.com/images/580b57fcd9996e24bc43c1a9.png",
              height: 200.0,
              width: 150.0,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }

  Center dotsRow(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: bottomNavInactiveColor,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: brightOrangeColor,
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: bottomNavInactiveColor,
            ),
          ),
        ],
      ),
    );
  }

  Row popularFoodsAndBtn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Most Popular Orders",
          style: normalTextStyle.copyWith(
            color: bottomNavActiveColor,
            fontWeight: FontWeight.w200,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "View All",
            style: normalTextStyle.copyWith(
              color: brightOrangeColor,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ],
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
