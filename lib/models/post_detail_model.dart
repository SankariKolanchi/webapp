import 'dart:convert';

PostDetailsModel postDetailsModelFromJson(Map<String, dynamic> str) => PostDetailsModel.fromJson((str));

String postDetailsModelToJson(PostDetailsModel data) => json.encode(data.toJson());

class PostDetailsModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostDetailsModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostDetailsModel.fromJson(Map<String, dynamic> json) => PostDetailsModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}