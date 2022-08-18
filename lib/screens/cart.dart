import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/screens/empty_cart.dart';
import 'package:food_ordering_app/screens/order_item_cart.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  bool havingItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F9),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: Color(0xFF0B2E40),
                      )),
                  const SizedBox(
                    width: 120,
                  ),
                  const Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0B2E40),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              havingItem ? EmptyCart() : OrderItemCart(),
            ]),
          )),
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
      ]),
    );
  }
}
