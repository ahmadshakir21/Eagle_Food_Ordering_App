import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

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
                children: [
                  const SizedBox(
                    width: 110,
                  ),
                  const Text(
                    "Admin Panel",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0B2E40),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.red,
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(labelText: "Food Name")),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(labelText: "Food Description")),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(labelText: "Restaurant Name")),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child:
                    TextField(decoration: InputDecoration(labelText: "Price")),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(labelText: "Delivery Time")),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(labelText: "Delivery Price")),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF244395),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        "Add",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )))
            ]))));
  }
}
