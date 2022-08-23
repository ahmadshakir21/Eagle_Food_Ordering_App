import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GNav(
        activeColor: Colors.white,
        color: Colors.white54,
        tabBackgroundColor: Colors.white12,
        backgroundColor: Color(0xFF244395),
        gap: 10,
        padding: EdgeInsets.all(15),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.restaurant_menu_rounded,
            text: 'Menu',
          ),
          GButton(
            icon: IconData(0xf06bd, fontFamily: 'MaterialIcons'),
            text: 'Offer',
          ),
          GButton(
            icon: Icons.shopping_cart_rounded,
            text: 'Cart',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ]);
  }
}
