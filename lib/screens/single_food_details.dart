import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class SingleFoodDetails extends StatelessWidget {
  const SingleFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf3f6f9),
      body: Column(children: [
        Expanded(
          child: Container(
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 280,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 15,
                      left: 15,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            size: 30,
                            color: Color(0xFF0B2E40),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Burger",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0B2E40)),
                      ),
                      SizedBox(
                        width: 235,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.star_rounded),
                      ),
                      Text(
                        "4",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0B2E40)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: const [
                      Text(
                        "19\$",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF244395)),
                      ),
                      SizedBox(width: 224),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.watch_later_outlined),
                      ),
                      Text(
                        "35 min",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0B2E40)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )),
          ),
        ),
        Container(
          height: 80,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TODO: create count up & count down button
              Container(
                width: 110,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => context.read<Counter>().decrement(),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xFF244395),
                          borderRadius: BorderRadius.circular(6)),
                      child: const Icon(Icons.remove,
                          size: 25, color: Color(0xFFf3f6f9)),
                    ),
                  ),
                  //TODO: add functionality for the child of Text widget
                  Container(
                    width: 50,
                    child: Center(
                      child: Text(
                        context.watch<Counter>().count.toString(),
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF244395)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => context.read<Counter>().increment(),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xFF244395),
                          borderRadius: BorderRadius.circular(6)),
                      child: const Icon(Icons.add,
                          size: 25, color: Color(0xFFf3f6f9)),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                width: 160,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFE24047),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  child: const Text(
                    "Add to cart",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
