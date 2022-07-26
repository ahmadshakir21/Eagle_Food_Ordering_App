import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/empty_my_favorite.dart';
import 'package:food_ordering_app/screens/non_empty_my_favorite.dart';

class MyFavorite extends StatelessWidget {
  MyFavorite({Key? key}) : super(key: key);
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: Color(0xFF0B2E40),
                        )),
                    const SizedBox(
                      width: 85,
                    ),
                    const Text(
                      "My Favorite",
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
                havingItem ? EmptyMyFavorite() : NonEmptyMyFavorite(),
              ]),
            )));
    ;
  }
}
