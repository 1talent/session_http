// To parse this JSON data, do
//
//     final postVo = postVoFromJson(jsonString);

import 'dart:convert';

List<PostVo> postVoFromJson(String str) =>
    List<PostVo>.from(json.decode(str).map((x) => PostVo.fromJson(x)));

String postVoToJson(List<PostVo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostVo {
  PostVo({
    required this.id,
    required this.image,
    required this.likes,
    required this.tags,
    required this.text,
    required this.publishDate,
    required this.updatedDate,
    required this.owner,
  });

  String id;
  String image;
  int likes;
  List<String> tags;
  String text;
  DateTime publishDate;
  DateTime updatedDate;
  Owner owner;

  factory PostVo.fromJson(Map<String, dynamic> json) => PostVo(
        id: json["id"],
        image: json["image"],
        likes: json["likes"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        text: json["text"],
        publishDate: DateTime.parse(json["publishDate"]),
        updatedDate:
            DateTime.parse(json['updatedDate'] ?? "2022-06-28T06:07:58.449Z"),
        owner: Owner.fromJson(json["owner"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "likes": likes,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "text": text,
        "publishDate": publishDate.toIso8601String(),
        "updatedDate": updatedDate,
        "owner": owner.toJson(),
      };
}

class Owner {
  Owner({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.title,
    required this.picture,
  });

  String id;
  String firstName;
  String lastName;
  String title;
  String picture;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        title: json["title"] ?? "Some One",
        picture: json["picture"] ??
            "https://cdn.pixabay.com/photo/2022/06/15/17/14/little-girl-7264330_1280.jpg",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "title": title,
        "picture": picture,
      };
}
