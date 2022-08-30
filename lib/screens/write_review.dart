import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/write_review_model.dart';

class WriteReview extends StatelessWidget {
  WriteReview({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final messageController = TextEditingController();

  sendWriteReviewToServer() async {
    FirebaseFirestore firebaseFirestoreWriteReview = FirebaseFirestore.instance;

    User? user = FirebaseAuth.instance.currentUser;
    WriteReviewModel writeReviewModel = WriteReviewModel();

    writeReviewModel.uID = user?.uid;
    writeReviewModel.name = nameController.text;
    writeReviewModel.reviewMessage = messageController.text;

    await firebaseFirestoreWriteReview
        .collection("write review")
        .doc(user?.uid)
        .set(writeReviewModel.toMap());

    nameController.text = "";
    messageController.text = "";
  }

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
                      width: 78,
                    ),
                    const Text(
                      "Write Reviews",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0B2E40),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Image.asset("assets/images/Icon3.png"),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 275,
                    width: 350,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(0.0, 0.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 320,
                        child: TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                              label: Text(
                            "Your Name",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 320,
                        child: TextField(
                          controller: messageController,
                          decoration: const InputDecoration(
                              label: Text(
                            "Write You Review",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 170,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: sendWriteReviewToServer,
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                primary: const Color(0xFF244395)),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )),
                      )
                    ]))
              ]),
            )));
  }
}
