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
                    margin: const EdgeInsets.only(top: 40, bottom: 30),
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
                            color: Color(0xFF7E7B7B),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
