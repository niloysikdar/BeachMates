import 'package:b2b/widgets/live_events_cards.dart';
import 'package:flutter/material.dart';
import 'package:b2b/widgets/live_events_header.dart';

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              liveEventsHeader(size: size),
              sortText(),
              Column(
                children: [
                  LiveEventsCard(
                    size: size,
                    imagepath: "assets/images/volleyball.png",
                    title: "Looking for more players",
                    description: "I have a ball and a volleyball net",
                  ),
                  LiveEventsCard(
                    size: size,
                    imagepath: "assets/images/jetski.png",
                    title: "Race Some Jet Skiis",
                    description: "Wanna have a  200m Race.",
                  ),
                  LiveEventsCard(
                    size: size,
                    imagepath: "assets/images/jetski.png",
                    title: "Race Some Jet Skiis",
                    description: "Wanna have a  200m Race.",
                  ),
                ],
              ),
            ],
          ),
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
}
