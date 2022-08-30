import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class Storage {
  final FirebaseStorage storage = FirebaseStorage.instance;

  Future uploadFile({String? filePath, String? fileName}) async {
    File file = File(filePath!);

    try {
      await storage.ref(fileName).putFile(file);
    } on FirebaseException catch (e) {
      print(e);
    }
  }
}
