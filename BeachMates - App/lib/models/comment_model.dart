import 'package:flutter/material.dart';

class CommentModel {
  final String comment;
  final String username;

  CommentModel({
    @required this.comment,
    @required this.username,
  });

  Map<String, dynamic> toMap() {
    return {
      "comment": comment,
      "username": username,
    };
  }
}
