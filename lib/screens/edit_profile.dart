import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Row(children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                size: 30,
                color: Color(0xFF0B2E40),
              )),
          const SizedBox(
            width: 90,
          ),
          const Text(
            "Edit Profile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF0B2E40),
            ),
          )
        ]),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 565,
          width: 350,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(0.0, 0.0), //(x,y)
              blurRadius: 6.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xFF244395),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Change Profile Image",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationThickness: 1,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                child: const TextField(
                  decoration: InputDecoration(
                      label: Text(
                    "Your Name",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                child: const TextField(
                  decoration: InputDecoration(
                      label: Text(
                    "Email",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text(
                    "Current Password",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text(
                    "New Password",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 320,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text(
                    "Confirm Password",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF244395),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        "Save Change",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ))),
            ],
          ),
        ),
      ]),
    ));
  }
}
