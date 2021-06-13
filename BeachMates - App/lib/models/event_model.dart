import 'package:flutter/material.dart';

class EventModel {
  final String id;
  final String title;
  final String postedBy;
  final String description;
  final List allpeople;
  final List comments;
  final String category;

  EventModel({
    @required this.id,
    @required this.title,
    @required this.postedBy,
    @required this.description,
    @required this.allpeople,
    @required this.comments,
    @required this.category,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "postedBy": postedBy,
      "description": description,
      "allpeople": allpeople,
      "comments": comments,
      "category": category,
    };
  }
}
