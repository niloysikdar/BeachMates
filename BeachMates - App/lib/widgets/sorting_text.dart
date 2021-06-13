import 'package:flutter/material.dart';

Widget sortText({
  @required String text,
}) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
