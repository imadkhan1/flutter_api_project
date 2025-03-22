import 'dart:convert';

List<GetModel> postModelFromJson(String str) =>
    List<GetModel>.from(json.decode(str).map((x) => GetModel.fromJson(x)));

// ignore: non_constant_identifier_names
String GetModelToJson(List<GetModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  GetModel({this.userId, this.id, this.title, this.body});

  factory GetModel.fromJson(Map<String, dynamic> json) => GetModel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body'],
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };
}
