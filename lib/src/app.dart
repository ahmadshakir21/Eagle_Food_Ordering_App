import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/about_us.dart';
import 'package:food_ordering_app/screens/authentication/authentication_sign_in.dart';
import 'package:food_ordering_app/screens/authentication/authentication_sign_up.dart';
import 'package:food_ordering_app/screens/authentication/main_screen.dart';
import 'package:food_ordering_app/screens/delivery_location.dart';
import 'package:food_ordering_app/screens/cart.dart';
import 'package:food_ordering_app/screens/edit_profile.dart';
import 'package:food_ordering_app/screens/expoer_menu.dart';
import 'package:food_ordering_app/screens/home_screen.dart';
import 'package:food_ordering_app/screens/my_favorite.dart';
import 'package:food_ordering_app/screens/my_order.dart';
import 'package:food_ordering_app/screens/offers_and_deals.dart';
import 'package:food_ordering_app/screens/on_boarding_screen.dart';
import 'package:food_ordering_app/screens/single_food_details.dart';
import 'package:food_ordering_app/screens/splash_screen.dart';
import 'package:food_ordering_app/screens/authentication/verification_code.dart';
import 'package:food_ordering_app/screens/successful.dart';
import 'package:food_ordering_app/screens/my_bottom_navigation_bar.dart';
import 'package:food_ordering_app/screens/write_review.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        "/myOrder": (BuildContext context) => MyOrder(),
        "/myFavorite": (BuildContext context) => MyFavorite(),
        "/writeReview": (BuildContext context) => WriteReview(),
        "/aboutMe": (BuildContext context) => const AboutUs(),
        "/editProfile": (BuildContext context) => EditProfile(),
        "/singleFoodDetails": (BuildContext context) =>
            const SingleFoodDetails(),
      },
    );
  }
}
