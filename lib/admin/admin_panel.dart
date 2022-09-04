import 'dart:isolate';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/admin_model.dart';
import 'package:food_ordering_app/screens/authentication/authentication_sign_in.dart';

class AdminPanel extends StatefulWidget {
  AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  final TextEditingController foodNameController = TextEditingController();

  final TextEditingController foodDescriptionController =
      TextEditingController();

  final TextEditingController foodPriceController = TextEditingController();

  final TextEditingController restaurantNameController =
      TextEditingController();

  final TextEditingController deliveryTimeController = TextEditingController();

  final TextEditingController deliveryPriceController = TextEditingController();

  @override
  void dispose() {
    foodNameController.dispose();
    foodDescriptionController.dispose();
    foodPriceController.dispose();
    restaurantNameController.dispose();
    deliveryTimeController.dispose();
    deliveryPriceController.dispose();
    super.dispose();
  }

  String? foodName;
  String? foodDescription;
  double? price;
  String? restaurantName;
  int? deliveryTime;
  double? deliveryPrice;

  sendAdminPanelFoodInformation() async {
    // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    // User? user = FirebaseAuth.instance.currentUser;
    // AdminModel adminModel = AdminModel();

    // adminModel.foodID = user?.uid;
    // adminModel.name = foodName;
    // adminModel.description = foodDescription;
    // adminModel.price = price;
    // adminModel.restaurantName = restaurantName;
    // adminModel.deliveryTime = deliveryTime;
    // adminModel.deliveryPrice = deliveryPrice;

    // adminModel.foodID = user?.uid;
    // adminModel.name = foodNameController.text;
    // adminModel.description = foodDescriptionController.text;
    // adminModel.price = int.parse(foodPriceController.text);
    // adminModel.restaurantName = restaurantNameController.text;
    // adminModel.deliveryTime = int.parse(deliveryTimeController.text);
    // adminModel.deliveryPrice = int.parse(deliveryPriceController.text);

    // await firebaseFirestore
    //     .collection("admin")
    //     .doc(user?.uid)
    //     .set(adminModel.toMap());
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference admin = FirebaseFirestore.instance.collection("admin");
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(children: [
                  const SizedBox(
                    width: 110,
                  ),
                  Text(
                    "Admin Panel",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0B2E40)),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  IconButton(
                      icon: Icon(Icons.logout),
                      color: Colors.red,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                elevation: 5,
                                alignment: Alignment.center,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 185,
                                  width: 350,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        "Alert",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF244395)),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        "Are you Sure want to Logout?",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF244395)),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: 110,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    primary: const Color(
                                                        0xFF244395)),
                                                child: const Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                          ),
                                          SizedBox(
                                            width: 110,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  FirebaseAuth.instance
                                                      .signOut();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    primary: const Color(
                                                        0xFFE24047)),
                                                child: const Text(
                                                  "Logout",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      })
                ]),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                    onChanged: (value) {
                      foodName = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Food Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                    onChanged: (value) {
                      foodDescription = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Food Description",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                    onChanged: (value) {
                      price = double.parse(value);
                    },
                    decoration: InputDecoration(
                      hintText: "Food Price",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                    onChanged: (value) {
                      restaurantName = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Restaurant Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                    onChanged: (value) {
                      deliveryTime = int.parse(value);
                    },
                    decoration: InputDecoration(
                      hintText: "Delivery Time",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                    onChanged: (value) {
                      deliveryPrice = double.parse(value);
                    },
                    decoration: InputDecoration(
                      hintText: "Delivery Price",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                    onPressed: () {
                      FirebaseFirestore firebaseFirestore =
                          FirebaseFirestore.instance;

                      User? user = FirebaseAuth.instance.currentUser;
                      AdminModel adminModel = AdminModel();

                      adminModel.foodID = user?.uid;
                      adminModel.name = foodName;
                      adminModel.description = foodDescription;
                      adminModel.price = price;
                      adminModel.restaurantName = restaurantName;
                      adminModel.deliveryTime = deliveryTime;
                      adminModel.deliveryPrice = deliveryPrice;

                      admin.add(adminModel.toMap());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF244395),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Adding Food",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ))),
          ],
        ),
      ),
    ));
  }
}
