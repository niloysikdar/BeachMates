import 'package:cloud_firestore/cloud_firestore.dart';
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

EventModel getEventModel({
  @required QueryDocumentSnapshot<Object> documentSnapshot,
}) {
  return EventModel(
    id: documentSnapshot["id"],
    title: documentSnapshot["title"],
    postedBy: documentSnapshot["postedBy"],
    description: documentSnapshot["description"],
    allpeople: (documentSnapshot["allpeople"] != null)
        ? documentSnapshot["allpeople"]
        : [],
    comments: (documentSnapshot["comments"] != null)
        ? documentSnapshot["comments"]
        : [],
    category: documentSnapshot["category"],
  );
}
