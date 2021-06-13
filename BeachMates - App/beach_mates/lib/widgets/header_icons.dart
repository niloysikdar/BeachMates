import 'package:flutter/material.dart';

Widget detailsHeaderIcon({
  @required IconData icon,
  @required String title,
  @required Color iconcolor,
}) {
  return Container(
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        Icon(icon, color: iconcolor),
        SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
