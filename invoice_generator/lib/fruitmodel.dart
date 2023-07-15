// To parse this JSON data, do
//
//     final fruitesModel = fruitesModelFromJson(jsonString);

import 'dart:convert';

FruitesModel fruitesModelFromJson(String str) => FruitesModel.fromJson(json.decode(str));

String fruitesModelToJson(FruitesModel data) => json.encode(data.toJson());

class FruitesModel {
  String name;
  String desc;
  String price;
  String image;

  FruitesModel({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
  });

  factory FruitesModel.fromJson(Map<String, dynamic> json) => FruitesModel(
    name: json["name"],
    desc: json["desc"],
    price: json["price"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "desc": desc,
    "price": price,
    "image": image,
  };
}


List<FruitesModel> fruits = [
  FruitesModel(name:"Pineapple" ,desc: "1Kg",price: "240/-",image: "assets/images/fruits/fruits1.png",),
  FruitesModel(name: "Strawberry", desc: "6 piece", price: "100/-",image: "assets/images/fruits/fruits2.png" ),
  FruitesModel(name:"Green Apple",desc: "500Gm",price: "120/-",image: "assets/images/fruits/fruits3.png", ),
  FruitesModel(name:"Orange", desc: "1Kg",price: "260/-", image: "assets/images/fruits/fruits4.png", ),
  FruitesModel(name:"Apple", desc: "1Kg", price: "170/-", image: "assets/images/fruits/fruits5.png", ),
  FruitesModel(name:"Mango",desc: "1Kg",price: "190/-",image: "assets/images/fruits/fruits6.png", ),
  FruitesModel(name:"Pomegranate", desc: "1Kg", price: "180/-",image: "assets/images/fruits/fruits7.png", ),
  FruitesModel(name:"Hass avocado", desc: "1Kg",price: "540/-", image: "assets/images/fruits/fruits8.png", ),
  FruitesModel(name:"Cherry",desc: "200gm",price: "240/-",image: "assets/images/fruits/fruits9.png", ),
  FruitesModel(name:"Blueberry",   desc: "250gm",price: "100/-", image: "assets/images/fruits/fruits10.png",  ),
  FruitesModel(name:"Acai Berries", desc: "250gm",price: "170/-",image: "assets/images/fruits/fruits11.png", ),
];
