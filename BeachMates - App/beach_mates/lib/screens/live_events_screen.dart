import 'package:b2b/constants/live_events_categories.dart';
import 'package:flutter/material.dart';
import 'package:b2b/constants/colors.dart';

class LiveEvents extends StatefulWidget {
  @override
  _LiveEventsState createState() => _LiveEventsState();
}

class _LiveEventsState extends State<LiveEvents> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(size: size),
            sortText(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(15),
              width: size.width,
              decoration: BoxDecoration(
                color: kyellow,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
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
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "I have a ball and a volleyball net",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                top: 5,
                                right: 25,
                                bottom: 5,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Color(0xffFF587A),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Join",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              padding: EdgeInsets.only(
                                top: 5,
                                right: 25,
                                bottom: 5,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.comment_rounded,
                                    color: Color(0xffFF9801),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Comment",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sortText() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        "Sort by: Newest",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget header({Size size}) {
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
          Text(
            "Live\nEvents",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              letterSpacing: 8,
            ),
          ),
          SizedBox(height: 18),
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
}
