import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/user_model.dart';
import 'package:food_ordering_app/models/user_model_new.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  PlatformFile? pickedFile;
  UploadTask? uploadTask;

  late String fileName;
  String imageUrl = "";

  Future selectFile(BuildContext context) async {
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

  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    XFile image;
    //Check Permissions
    await Permission.photos.request();
    var permissionStatus = await Permission.photos.status;
    if (permissionStatus.isGranted) {
      //select images
      XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
      var file = File(image?.path as String);
      fileName = basename(file.path);
      if (image != null) {
        //upload image to firebase
        var snapshot = await FirebaseStorage.instance
            .ref()
            .child("profile")
            .child(FirebaseAuth.instance.currentUser!.uid +
                "_" +
                basename(file.path))
            .putFile(file);
        var downlodeURL = await snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downlodeURL;
        });

        Map<String, dynamic> map = Map();
        if (fileName != null) {
          String url = downlodeURL;
          map['image'] = url;
        }
        var uplod = await FirebaseFirestore.instance
            .collection("user")
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .update(map);
        // Get.snackbar("Profile Image", "Your profile image is update");
      } else {
        print("No Image Path Recived");
      }
    } else {
      print("Permission not granted. Try Again with permission access");
    }
  }

  // Future uploadFile() async {
  //   final path = pickedFile!.name;
  //   final file = File(pickedFile!.path!);

  //   final ref = FirebaseStorage.instance.ref().child(path);
  //   uploadTask = ref.putFile(file);

  //   final snapshot = await uploadTask!.whenComplete(() {});

  //   final urlDownload = await snapshot.ref.getDownloadURL();
  //   print(urlDownload);

  //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  //   User? user = FirebaseAuth.instance.currentUser;
  //   UserModel userModel = UserModel();

  //   userModel.image = urlDownload;
  //   await firebaseFirestore
  //       .collection("user")
  //       .doc(user?.uid)
  //       .update({'image': userModel.image});
  // }

  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            future: FirebaseFirestore.instance
                .collection("user")
                .doc(user!.uid)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text("Error...");
              } else if (snapshot.data == null) {
                return Text("Data is null");
              }

              UserModel theUserModel =
                  UserModel.fromSnapShot(snapshot.data as DocumentSnapshot);

              // UserModelNew theUserModelNew =
              //     UserModelNew.fromSnapShot(snapshot.data as DocumentSnapshot);

              return Padding(
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
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: theUserModel.image != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Image.network(
                                            theUserModel.image.toString(),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF244395),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                              ),
                              Container(
                                  width: 250,
                                  height: 40,
                                  child: ElevatedButton(
                                      onPressed: uploadImage,
                                      style: ElevatedButton.styleFrom(
                                          primary: const Color(0xFF244395),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      child: const Text(
                                        "Change Your Image",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ))),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ));
            }));
  }
}
