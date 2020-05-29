import 'package:flutter/material.dart';

@immutable
class VQuotes{
  final String body;
  final String url;
  final String poster;
  final String date;
  VQuotes({this.url, this.poster, this.date, this.body});
  factory VQuotes.fromJson(Map<String, dynamic> json){
    return VQuotes(
      body: json["Vakta"],
      url: json["URL"],
      poster: json["Poster"],
      date: json["Date"]
    );
  }
}
