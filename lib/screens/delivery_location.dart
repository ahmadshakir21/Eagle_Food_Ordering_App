import 'dart:ui';

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
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //TODO: Add Google Maps
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 100,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.white,
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
                            // child: Image.asset(
                            //   "assets/images/52110.jpg",
                            //   color: Colors.white.withOpacity(0.8),
                            //   colorBlendMode: BlendMode.modulate,
                            //   fit: BoxFit.fitWidth,
                            // ),
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
                                        borderRadius:
                                            BorderRadius.circular(7))),
                                label: const Text(
                                  "Set Your Location",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          child: const TextField(
                            decoration: InputDecoration(
                                label: Text(
                              "First Name",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: const TextField(
                            decoration: InputDecoration(
                                label: Text(
                              "Last Name",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 420,
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          "Email Address",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 420,
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 420,
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          "House No / Flat No / Floor",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 420,
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          "Society / Street Name",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                        height: 40,
                        width: 400,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF244395),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            child: const Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )))
                  ]),
            )));
  }
}
