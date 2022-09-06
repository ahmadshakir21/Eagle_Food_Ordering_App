import 'package:cloud_firestore/cloud_firestore.dart';

class AdminModel {
  String? foodID;
  String? name;
  String? description;
  double? price;
  String? restaurantName;
  String? image;
  int? deliveryTime;
  double? deliveryPrice;

  AdminModel(
      {this.foodID,
      this.name,
      this.description,
      this.price,
      this.restaurantName,
      this.image,
      this.deliveryTime,
      this.deliveryPrice});

  Map<String, dynamic> toMap() {
    return {
      "foodID": foodID,
      "name": name,
      "description": description,
      "price": price,
      "restaurantName": restaurantName,
      "image": image,
      "deliveryTime": deliveryTime,
      "deliveryPrice": deliveryPrice,
    };
  }

  factory AdminModel.fromSnapShot(DocumentSnapshot documentSnapshot) {
    return AdminModel.fromMap(documentSnapshot.data() as Map<String, dynamic>,
        reference: documentSnapshot.reference);
  }

  factory AdminModel.fromMap(Map<String, dynamic> map,
      {required DocumentReference<Object?> reference}) {
    return AdminModel(
        foodID: map['foodID'],
        name: map['name'],
        description: map['description'],
        price: map['price'],
        restaurantName: map['restaurantName'],
        image: map['image'],
        deliveryTime: map['deliveryTime'],
        deliveryPrice: map['deliveryPrice']);
  }
}
