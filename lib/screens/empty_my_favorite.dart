import 'package:flutter/material.dart';

class EmptyMyFavorite extends StatelessWidget {
  const EmptyMyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 60,
      ),
      Container(
        height: 300,
        width: 300,
        child: Image.asset("assets/images/Group 26.png"),
      ),
      const Text(
        "No Favourites Set",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        "Add your Favourites Items from Menu to See them Here",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade600),
      )
    ]);
    ;
  }
}
