import 'package:b2b/constants/colors.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kyellow,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: kblue,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
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
                    children: [
                      Container(
                        color: Colors.red,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Icon(Icons.group),
                            SizedBox(width: 5),
                            Text(
                              "3",
                              style: TextStyle(
                                fontSize: 20,
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
