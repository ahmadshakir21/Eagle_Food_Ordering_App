import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Container(
          height: 250,
          width: 250,
          child: Image.asset("assets/images/Icon.png"),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          "Your cart is empty.",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Add something from the Menu.",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600),
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
            width: 300,
            height: 40,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: const Color(0xFF244395)),
                child: const Text("Browse Food Menu",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500))))
      ],
    );
  }
}
