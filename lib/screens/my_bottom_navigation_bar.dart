import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/cart.dart';
import 'package:food_ordering_app/screens/edit_profile.dart';
import 'package:food_ordering_app/screens/expoer_menu.dart';
import 'package:food_ordering_app/screens/home_screen.dart';
import 'package:food_ordering_app/screens/offers_and_deals.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int currentTab = 0;
  final List screens = [
    ExporeMenu(),
    OffersAndDeals(),
    HomeScreen(),
    Cart(),
    EditProfile()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentScreen = HomeScreen();
              currentTab = 0;
            });
          },
          child: const Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = ExporeMenu();
                            currentTab = 1;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.restaurant_menu,
                                color:
                                    currentTab == 1 ? Colors.blue : Colors.grey,
                              ),
                              Text(
                                "Menu",
                                style: TextStyle(
                                  color: currentTab == 1
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ]),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = OffersAndDeals();
                            currentTab = 2;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.discount,
                                color:
                                    currentTab == 2 ? Colors.blue : Colors.grey,
                              ),
                              Text(
                                "Offers",
                                style: TextStyle(
                                  color: currentTab == 2
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Cart();
                            currentTab = 3;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color:
                                    currentTab == 3 ? Colors.blue : Colors.grey,
                              ),
                              Text(
                                "Cart",
                                style: TextStyle(
                                  color: currentTab == 3
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ]),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = EditProfile();
                            currentTab = 4;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color:
                                    currentTab == 4 ? Colors.blue : Colors.grey,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(
                                  color: currentTab == 4
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}
