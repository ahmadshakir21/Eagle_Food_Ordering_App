import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_ordering_app/services/storage_services.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
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
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xFF244395),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () async {
                            final result = await FilePicker.platform.pickFiles(
                                allowMultiple: false,
                                type: FileType.custom,
                                allowedExtensions: ['png', 'jpg', 'svg']);

                            if (result == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("No file selected")));
                              return null;
                            }

                            final path = result.files.single.path;
                            final fileName = result.files.single.name;

                            storage
                                .uploadFile(filePath: path, fileName: fileName)
                                .then((value) => print("Done"));
                          },
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
          ),
        ]),
      ),
    ));
  }
}
