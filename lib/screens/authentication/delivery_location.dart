import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeliveryLocation extends StatelessWidget {
  const DeliveryLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3F6F9),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: Color(0xFF0B2E40),
                      )),
                  const SizedBox(
                    width: 55,
                  ),
                  const Text(
                    "Set Delivery Location",
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
              const Text(
                "Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Container(
                    height: 240,
                    width: 350,
                    decoration: BoxDecoration(
                        color: const Color(0xFF5ABECD),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 6,
                            spreadRadius: 1,
                            offset: const Offset(
                                0, 0), // shadow direction: bottom right
                          )
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      "assets/images/52110.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    bottom: 7,
                    left: 60,
                    right: 60,
                    child: Container(
                      width: 230,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF244395),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          label: const Text(
                            "Set Your Location",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          icon: const FaIcon(
                            FontAwesomeIcons.locationCrosshairs,
                            size: 22,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
