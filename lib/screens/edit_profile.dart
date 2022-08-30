import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/user_model.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  PlatformFile? pickedFile;
  UploadTask? uploadTask;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'svg']);

    if (result == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Color(0xFF244395),
          content: Text("No file selected")));
      return null;
    }

    setState(() {
      pickedFile = result.files.first;
    });
  }

  Future uploadFile() async {
    final path = pickedFile!.name;
    final file = File(pickedFile!.path!);

    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTask = ref.putFile(file);

    final snapshot = await uploadTask!.whenComplete(() {});

    final urlDownload = await snapshot.ref.getDownloadURL();
    print(urlDownload);

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = FirebaseAuth.instance.currentUser;
    UserModel userModel = UserModel();

    userModel.image = urlDownload;
    await firebaseFirestore
        .collection("user")
        .doc(user?.uid)
        .update({'image': userModel.image});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Edit Profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0B2E40),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 250,
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      children: [
                        pickedFile != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.file(
                                    File(pickedFile!.path!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF244395),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: selectFile,
                          child: const Text(
                            "Change Profile Image",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                                decorationThickness: 1,
                                color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: uploadFile,
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
          ),
        ]),
      ),
    ));
  }
}
