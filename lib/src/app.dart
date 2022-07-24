import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/authentication_sign_in.dart';
import 'package:food_ordering_app/screens/authentication_sign_up.dart';
import 'package:food_ordering_app/screens/home_screen.dart';
import 'package:food_ordering_app/screens/on_boarding_screen.dart';
import 'package:food_ordering_app/screens/splash_screen.dart';
import 'package:food_ordering_app/screens/verification_code.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
