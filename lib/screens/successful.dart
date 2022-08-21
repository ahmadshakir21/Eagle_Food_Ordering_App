import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class Successful extends StatelessWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/images/Json_for_lottie_package/109517-delivery.json",
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Preparing in 40 minutes",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              label: "MENU",
              icon: FaIcon(Icons.restaurant_menu_rounded),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: "OFFER",
              icon: FaIcon(Icons.percent_rounded),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: "HOME",
              icon: FaIcon(Icons.home_rounded),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: "CART",
              icon: FaIcon(Icons.shopping_cart),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: "PROFILE",
              icon: FaIcon(Icons.person),
              backgroundColor: Colors.blue),
        ]));
  }
}
