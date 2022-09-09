import 'package:cloud_firestore/cloud_firestore.dart';

class UserModelNew {
  String? uID;
  String? name;
  String? email;
  String? image;
  int? phoneNumber;

  DocumentReference? reference;

  UserModelNew({this.uID, this.name, this.email, this.image, this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      "uID": uID,
      "name": name,
      "email": email,
      "image": image,
      "phone number": phoneNumber,
    };
  }

  factory UserModelNew.fromSnapShot(DocumentSnapshot documentSnapshot) {
    return UserModelNew.fromMap(documentSnapshot.data() as Map<String, dynamic>,
        reference: documentSnapshot.reference);
  }

  factory UserModelNew.fromMap(Map<String, dynamic> map,
      {required DocumentReference<Object?> reference}) {
    return UserModelNew(
        uID: map['uID'],
        name: map['name'],
        email: map['email'],
        image: map['image'],
        phoneNumber: map['phoneNumber']);
  }
}
