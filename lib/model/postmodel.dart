// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String name;
  String age;
  String phoneno;
  String address;
  String pincode;
  String emailid;
  String password;

  Posts({
    required this.name,
    required this.age,
    required this.phoneno,
    required this.address,
    required this.pincode,
    required this.emailid,
    required this.password,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    name: json["name"],
    age: json["age"],
    phoneno: json["phoneno"],
    address: json["address"],
    pincode: json["pincode"],
    emailid: json["emailid"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "phoneno": phoneno,
    "address": address,
    "pincode": pincode,
    "emailid": emailid,
    "password": password,
  };
}
