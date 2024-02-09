// To parse this JSON data, do
//
//     final viewall = viewallFromJson(jsonString);

import 'dart:convert';

List<Viewall> viewallFromJson(String str) => List<Viewall>.from(json.decode(str).map((x) => Viewall.fromJson(x)));

String viewallToJson(List<Viewall> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Viewall {
  String id;
  String moviename;
  String moviedescription;
  String moviedirector;
  String movieactor;
  int v;

  Viewall({
    required this.id,
    required this.moviename,
    required this.moviedescription,
    required this.moviedirector,
    required this.movieactor,
    required this.v,
  });

  factory Viewall.fromJson(Map<String, dynamic> json) => Viewall(
    id: json["_id"],
    moviename: json["Moviename"],
    moviedescription: json["moviedescription"],
    moviedirector: json["moviedirector"],
    movieactor: json["movieactor"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Moviename": moviename,
    "moviedescription": moviedescription,
    "moviedirector": moviedirector,
    "movieactor": movieactor,
    "__v": v,
  };
}
