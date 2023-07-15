import 'dart:convert';

Vegetable vegetableFromJson(String str) => Vegetable.fromJson(json.decode(str));

String vegetableToJson(Vegetable data) => json.encode(data.toJson());

class Vegetable {
  String name;
  String desc;
  String price;
  String image;

  Vegetable({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
  });

  factory Vegetable.fromJson(Map<String, dynamic> json) => Vegetable(
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
List<Vegetable> vegetable=[
  Vegetable(name: "	Capsicum", desc: "100Gm", price: "30/-", image: image)
];