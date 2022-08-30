class WriteReviewModel {
  String? uID;
  String? name;
  String? email;
  String? image;
  String? reviewMessage;

  WriteReviewModel(
      {this.uID, this.name, this.email, this.image, this.reviewMessage});

  Map<String, dynamic> toMap() {
    return {
      "uID": uID,
      "name": name,
      "email": email,
      "image": image,
      "reviewMessage": reviewMessage,
    };
  }

  factory WriteReviewModel.fromMap(Map<String, dynamic> map) {
    return WriteReviewModel(
        uID: map['uID'],
        name: map['name'],
        email: map['email'],
        image: map['image'],
        reviewMessage: map['reviewMessage']);
  }
}
