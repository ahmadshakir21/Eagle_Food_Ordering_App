import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TODO: Create Drawer
                Container(
                  height: 50,
                  width: 50,
                  color: const Color(0xFF0B2E40),
                ),
                Container(
                  height: 50,
                  width: 50,
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

                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 370,
                        decoration: BoxDecoration(
                            color: const Color(0xFF7E7B7B),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Positioned(
                          top: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hardees",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                              Text("Special Family Box",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ],
                          )),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(children: const [
                          Text("33\$",
                              style: TextStyle(
                                  color: Color(0xFF244395),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ),
                      Positioned(
                        top: 0,
                        right: 37,
                        child: Container(
                          height: 50,
                          width: 40,
                          color: Colors.red,
                          child: const Center(
                              child: Text(
                            "NEW",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          height: 30,
                          width: 85,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Order"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF244395),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 138,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    Positioned(
                                        right: 5,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              color: Colors.red,
                                            ))),
                                    Positioned(
                                        bottom: 5,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add_box_outlined,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        "Pizza",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star_rounded,
                                            color: Colors.red,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "4",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
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
