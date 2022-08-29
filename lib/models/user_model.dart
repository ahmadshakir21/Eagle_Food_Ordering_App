class UserModel {
  String? uID;
  String? name;
  String? email;
  String? image;
  int? phoneNumber;

  UserModel({this.uID, this.name, this.email, this.image, this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      "uID": uID,
      "name": name,
      "email": email,
      "image": image,
      "phone number": phoneNumber,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        uID: map['uID'],
        name: map['name'],
        email: map['email'],
        image: map['image'],
        phoneNumber: map['phoneNumber']);
  }
}
