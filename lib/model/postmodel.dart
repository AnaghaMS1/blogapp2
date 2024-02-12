// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String id;
  String name;
  String age;
  String phoneno;
  String address;
  String pincode;
  String emailid;
  String password;
  int v;

  Posts({
    required this.id,
    required this.name,
    required this.age,
    required this.phoneno,
    required this.address,
    required this.pincode,
    required this.emailid,
    required this.password,
    required this.v,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    id: json["_id"],
    name: json["name"],
    age: json["age"],
    phoneno: json["phoneno"],
    address: json["address"],
    pincode: json["pincode"],
    emailid: json["emailid"],
    password: json["password"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "age": age,
    "phoneno": phoneno,
    "address": address,
    "pincode": pincode,
    "emailid": emailid,
    "password": password,
    "__v": v,
  };
}
