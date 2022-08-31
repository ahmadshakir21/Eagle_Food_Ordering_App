import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/singleFoodDetails");
      },
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Stack(
              children: [
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                      color: const Color(0xFFc4c4c4),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        color: Color(0xFFE24047),
                      ),
                      onPressed: () {},
                    )),
              ],
            ),
          ),
          Positioned(
            top: 125,
            left: 5,
            child: Container(
              height: 20,
              width: 160,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Burger",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0B2E40)),
                    ),
                    Text(
                      "\$18",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF244395)),
                    ),
                  ]),
            ),
          ),
          Positioned(
            top: 150,
            left: 5,
            child: Container(
              height: 20,
              width: 160,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Hardees",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0B2E40)),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
