import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_ordering_app/screens/empty_my_order.dart';
import 'package:food_ordering_app/screens/non_empty_my_order.dart';

class MyOrder extends StatelessWidget {
  MyOrder({Key? key}) : super(key: key);
  bool havingItem = true;
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
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: Color(0xFF0B2E40),
                        )),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      "My Order",
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
                havingItem ? EmptyMyOrder() : NonEmptyMyOrder(),
              ]),
            )));
  }
}
