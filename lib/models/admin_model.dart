class AdminModel {
  String? foodID;
  String? name;
  String? description;
  double? price;
  String? restaurantName;
  int? deliveryTime;
  double? deliveryPrice;

  AdminModel(
      {this.foodID,
      this.name,
      this.description,
      this.price,
      this.restaurantName,
      this.deliveryTime,
      this.deliveryPrice});

  Map<String, dynamic> toMap() {
    return {
      "foodID": foodID,
      "name": name,
      "description": description,
      "price": price,
      "restaurantName": restaurantName,
      "deliveryTime": deliveryTime,
      "deliveryPrice": deliveryPrice,
    };
  }

  factory AdminModel.fromMap(Map<String, dynamic> map) {
    return AdminModel(
        foodID: map['foodID'],
        name: map['name'],
        description: map['description'],
        price: map['price'],
        restaurantName: map['restaurantName'],
        deliveryTime: map['deliveryTime'],
        deliveryPrice: map['deliveryPrice']);
  }
}
