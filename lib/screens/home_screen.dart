import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/widgets/drawer_items.dart';
import 'package:food_ordering_app/widgets/item_info.dart';
import 'package:food_ordering_app/widgets/new_offer_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF244395),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mode_edit_outline_rounded,
                      color: Colors.white,
                    )),
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: const Color(0xFFC3C3C3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Ahmad Shakir",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ahmad.shakir@gmail.com",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          DrawerItems(icon: Icons.ballot, text: "My Order"),
          DrawerItems(icon: Icons.favorite, text: "My Favorites"),
          DrawerItems(icon: Icons.star_rounded, text: "Write Reviews"),
          DrawerItems(icon: Icons.logout, text: "Logout"),
        ]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 25, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.menu_rounded,
                      size: 35,
                      color: Color(0xFF0B2E40),
                    ),
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    }),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xFF0B2E40),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TODO: Change Name of user (Use String interpolation)
                  const Text("Hello! Ahmad",
                      style: TextStyle(
                          color: Color(0xFF0B2E40),
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  const Text("What do you want to eat?",
                      style: TextStyle(
                          color: Color(0xFF7E7B7B),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  Container(
                    width: 370,
                    height: 40,
                    margin: const EdgeInsets.only(top: 30, bottom: 30),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search_rounded),
                          hintText: "Search Food",
                          filled: true,
                          fillColor: const Color(0xFFD9D9D9),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  NewOfferItem(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Category",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    // color: Colors.red,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 90,
                          width: 65,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF244395)),
                          child: Column(children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: Image.asset("assets/images/menu.png"),
                              ),
                            ),
                            const Text(
                              "All",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ]),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 90,
                          width: 65,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF244395)),
                          child: Column(children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Image.asset("assets/images/burger.png"),
                              ),
                            ),
                            const Text(
                              "Burger",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ]),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 90,
                          width: 65,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF244395)),
                          child: Column(children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Image.asset("assets/images/pizza.png"),
                              ),
                            ),
                            const Text(
                              "Pizza",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ]),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 90,
                          width: 65,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF244395)),
                          child: Column(children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Image.asset(
                                    "assets/images/fried-potatoes.png"),
                              ),
                            ),
                            const Text(
                              "Fries",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ]),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 90,
                          width: 65,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF244395)),
                          child: Column(children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Image.asset(
                                    "assets/images/fried-chicken.png"),
                              ),
                            ),
                            const Text(
                              "Chicken",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ]),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 90,
                          width: 65,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF244395)),
                          child: Column(children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Image.asset("assets/images/hot-dog.png"),
                              ),
                            ),
                            const Text(
                              "Hot Dog",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 170,
                    width: 400,
                    // color: Colors.red,
                    child: GridView.builder(
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15),
                      itemBuilder: (context, index) {
                        return ItemInfo();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
      ]),
    );
  }
}
