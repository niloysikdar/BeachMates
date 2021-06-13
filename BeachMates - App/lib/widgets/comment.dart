import 'package:flutter/material.dart';

Widget commentCard({
  @required Size size,
  @required String author,
  @required String text,
}) {
  return Container(
    width: size.width,
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Color(0xffffffff).withOpacity(0.67),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Icon(
          Icons.account_circle,
          size: 38,
          color: Colors.green,
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              author,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 3),
            Text(
              text,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
