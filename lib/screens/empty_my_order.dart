import 'package:flutter/material.dart';

class EmptyMyOrder extends StatelessWidget {
  const EmptyMyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 60,
      ),
      Container(
        height: 300,
        width: 300,
        child: Image.asset("assets/images/Icon2.png"),
      ),
      const Text(
        "No Order Available",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        "Please add some Items from the Explore Menu",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade600),
      )
    ]);
  }
}
