import 'package:b2b/constants/colors.dart';
import 'package:b2b/screens/event_details_screen.dart';
import 'package:flutter/material.dart';

class LiveEventsCard extends StatelessWidget {
  final Size size;
  final String imagepath;
  final String title;
  final String postedBy;
  LiveEventsCard({
    @required this.size,
    @required this.imagepath,
    @required this.title,
    @required this.postedBy,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetails(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        padding: EdgeInsets.all(15),
        width: size.width,
        decoration: BoxDecoration(
          color: kyellow.withOpacity(0.7),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Image.asset(imagepath),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Posted By $postedBy",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
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
                      SizedBox(width: 12),
                      Container(
                        padding: EdgeInsets.only(
                          top: 5,
                          right: 20,
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
    );
  }
}
