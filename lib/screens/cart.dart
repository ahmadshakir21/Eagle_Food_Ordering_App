import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f2f2),
      body: Padding(
          padding: const EdgeInsets.all(15),
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
              height: 115,
            ),
            Container(
                height: 250,
                width: 250,
                child: Image.asset("assets/images/Icon.png")),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Your cart is empty.",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0B2E40)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Add something from the Menu.",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0B2E40)),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
                width: 300,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: const Color(0xFF244395)),
                    child: const Text("Browse Food Menu")))
          ])),
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
