import 'package:b2b/constants/colors.dart';
import 'package:b2b/widgets/header_icons.dart';
import 'package:flutter/material.dart';

Widget detailsHeader({@required Size size}) {
  return Container(
    width: size.width,
    padding: EdgeInsets.only(
      top: 15,
      right: 25,
      bottom: 20,
      left: 25,
    ),
    decoration: BoxDecoration(
      color: kblue,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset("assets/images/volleyball.png"),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Looking for more players",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Posted by Parth Chadha",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Hi everybody!\nThis is Parth, I tend to come to the beach quite often and I love to play beach voleyball. I have a ball as well, would you like to join me for the event? looking forward to meet with new people!!",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            detailsHeaderIcon(
              icon: Icons.group,
              iconcolor: Colors.grey,
              title: "3",
            ),
            detailsHeaderIcon(
              icon: Icons.notifications,
              iconcolor: Color(0xffFF587A),
              title: "Join",
            ),
            detailsHeaderIcon(
              icon: Icons.comment_rounded,
              iconcolor: Color(0xffFF9801),
              title: "Comment",
            ),
          ],
        ),
      ],
    ),
  );
}
