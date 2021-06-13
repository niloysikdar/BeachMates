import 'package:b2b/constants/colors.dart';
import 'package:b2b/models/event_model.dart';
import 'package:b2b/widgets/header_icons.dart';
import 'package:flutter/material.dart';

Widget detailsHeader({
  @required Size size,
  @required EventModel eventModel,
}) {
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    eventModel.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Posted by ${eventModel.postedBy}",
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
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            eventModel.description,
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
              title: eventModel.allpeople.length.toString(),
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
