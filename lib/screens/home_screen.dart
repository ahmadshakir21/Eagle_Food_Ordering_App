import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              padding: const EdgeInsets.all(6),
                              child: Image.asset("assets/images/burger.png"),
                            ),
                          ),
                          const Text(
                            "Burger",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ]),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ]),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ]),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ]),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 160,
                    width: 400,
                    child: GridView.builder(
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 125,
                          width: 125,
                          color: Colors.blue,
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
            icon: Icon(Icons.menu),
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            label: "OFFER",
            icon: Icon(Icons.discount),
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            label: "HOME",
            icon: Icon(Icons.home),
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            label: "CART",
            icon: Icon(Icons.card_travel),
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            label: "PROFILE",
            icon: Icon(Icons.person),
            backgroundColor: Colors.blue),
      ]),
    );
  }
}
