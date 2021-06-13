import 'package:b2b/constants/colors.dart';
import 'package:b2b/constants/live_events_categories.dart';
import 'package:b2b/screens/new_event.dart';
import 'package:flutter/material.dart';

Widget liveEventsHeader({
  @required Size size,
  @required BuildContext context,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Live\nEvents",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                letterSpacing: 8,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewEvent(),
                  ),
                );
              },
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.black,
              ),
              backgroundColor: Color(0xffb7e8e7),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: liveEventsCategories.map((item) {
            return Column(
              children: [
                Image.asset(item["image"]),
                SizedBox(
                  height: (item["category"] != "Jet Ski") ? 9 : 0,
                ),
                Text(
                  item["category"],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    ),
  );
}
