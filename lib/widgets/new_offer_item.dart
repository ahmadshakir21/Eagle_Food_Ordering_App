import 'package:flutter/material.dart';

class NewOfferItem extends StatelessWidget {
  const NewOfferItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
