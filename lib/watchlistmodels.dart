import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:http/http.dart' as http;
import 'package:counter_7/watchlist.dart';
import 'dart:developer';
import 'package:counter_7/detailwatchlist.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/budgetmodel.dart';
import 'package:counter_7/budgetshow.dart';
import 'dart:convert';

List<ToDo> toDoFromJson(String str) => List<ToDo>.from(json.decode(str).map((x) => ToDo.fromJson(x)));

String toDoToJson(List<ToDo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ToDo {
  ToDo({
    required this.model,
    required this.pk,
    required this.fields,
  });

  String model;
  int pk;
  Fields fields;

  factory ToDo.fromJson(Map<String, dynamic> json) => ToDo(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  Fields({
    required this.watched,
    required this.title,
    required this.rating,
    required this.release_date,
    required this.review,
  });

  String watched;
  String title;
  String rating;
  String release_date;
  String review;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    watched: json["watched"],
    title: json["title"],
    rating: json["rating"],
    release_date: json["release_date"],
    review: json["review"],
  );

  Map<String, dynamic> toJson() =>
      {
        "watched": watched,
        "title": title,
        "rating": rating,
      };}