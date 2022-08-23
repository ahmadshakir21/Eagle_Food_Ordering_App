import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                      color: const Color(0xFFc4c4c4),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                    right: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 23,
                      ),
                      onPressed: () {},
                    )),
                Positioned(
                    bottom: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
            top: 125,
            left: 10,
            child: Row(
              children: [
                const Text(
                  "Burger",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0B2E40)),
                ),
                const SizedBox(
                  width: 70,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star_rounded,
                      color: Colors.red,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "3",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0B2E40)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 7,
            left: 10,
            child: Row(children: const [
              Text(
                "18\$",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF244395)),
              ),
              SizedBox(
                width: 65,
              ),
              Text(
                "Hardees",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0B2E40)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
