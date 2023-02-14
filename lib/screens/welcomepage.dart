import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tasty_food_one/screens/bottomNavigationParent.dart';
import 'package:tasty_food_one/styles/styling.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: orangeColor,
              image: const DecorationImage(
                image: NetworkImage(
                  // "https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                  // "https://assets.cntraveller.in/photos/60ba26c0bfe773a828a47146/4:3/w_1440,h_1080,c_limit/Burgers-Mumbai-Delivery.jpg",
                  "https://insanelygoodrecipes.com/wp-content/uploads/2020/05/Burger-with-fries.png",
                ),
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                EasyRichText(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  "Welcome to Tasty Food",
                  style: headingOneStyle.copyWith(
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  "Get delicious food delivered at your doorstep",
                  style: normalTextStyle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: orangeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 8.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigationParent(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: normalTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: normalTextStyle.copyWith(fontSize: 14.0),
                    ),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            builder: (context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20.0,
                                    50.0,
                                    20.0,
                                    20.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Welcome!",
                                        style: headingOneStyle.copyWith(
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0.0, 10.0, 40.0, 10.0),
                                        child: Text(
                                          "Experience the magic of tasty food with us once you log in!",
                                          style: normalTextStyle.copyWith(
                                            color: HexColor("#292D32")
                                                .withOpacity(0.5),
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Form(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 20.0,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Email",
                                                style: headingOneStyle.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
                                              TextFormField(
                                                textInputAction:
                                                    TextInputAction.next,
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      HexColor('#F7F7F7'),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  hintText: 'handuah@gmail.com',
                                                  hintStyle:
                                                      normalTextStyle.copyWith(
                                                    color: Colors.grey,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                              ),
                                              Text(
                                                "Password",
                                                style: headingOneStyle.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
                                              TextFormField(
                                                textInputAction:
                                                    TextInputAction.next,
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      HexColor('#F7F7F7'),
                                                  border:
                                                      const OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  hintText: '*******',
                                                  hintStyle:
                                                      normalTextStyle.copyWith(
                                                    color: Colors.grey,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Forgotten Password?",
                                                    style: normalTextStyle
                                                        .copyWith(
                                                      color: deepRedColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.06,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: orangeColor,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    elevation: 8.0,
                                                  ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Sign In",
                                                    style: normalTextStyle,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Don't have an account?",
                                                    style: normalTextStyle
                                                        .copyWith(
                                                      fontSize: 14.0,
                                                      color: HexColor("#292D32")
                                                          .withOpacity(0.5),
                                                    ),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Sign in",
                                                      style: normalTextStyle
                                                          .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        fontSize: 14.0,
                                                        color:
                                                            HexColor("#292D32"),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Text(
                        "Sign up",
                        style: normalTextStyle.copyWith(
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
