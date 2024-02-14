// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String id;
  String? post;
  DateTime postedDate;
  int v;

  Posts({
    required this.id,
    this.post,
    required this.postedDate,
    required this.v,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    id: json["_id"],
    post: json["post"],
    postedDate: DateTime.parse(json["postedDate"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "post": post,
    "postedDate": postedDate.toIso8601String(),
    "__v": v,
  };
}
