import 'package:b2b/models/event_model.dart';
import 'package:b2b/widgets/live_events_cards.dart';
import 'package:b2b/widgets/sorting_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
              sortText(text: "Sort by: Newest"),
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("liveEvents")
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, index) {
                        EventModel eventModel = EventModel(
                          id: snapshot.data.docs[index]["id"],
                          title: snapshot.data.docs[index]["title"],
                          postedBy: snapshot.data.docs[index]["postedBy"],
                          description: snapshot.data.docs[index]["description"],
                          allpeople: snapshot.data.docs[index]["allpeople"],
                          comments: snapshot.data.docs[index]["comments"],
                          category: snapshot.data.docs[index]["category"],
                        );
                        return LiveEventsCard(
                          size: size,
                          imagepath: "assets/images/volleyball.png",
                          title: eventModel.title,
                          postedBy: eventModel.postedBy,
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("Error"),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              // Column(
              //   children: [
              //     LiveEventsCard(
              //       size: size,
              //       imagepath: "assets/images/volleyball.png",
              //       title: "Looking for more players",
              //       description: "I have a ball and volleyball net",
              //     ),
              //     LiveEventsCard(
              //       size: size,
              //       imagepath: "assets/images/jetski.png",
              //       title: "Race Some Jet Skiis",
              //       description: "Wanna have a  200m Race.",
              //     ),
              //     LiveEventsCard(
              //       size: size,
              //       imagepath: "assets/images/sandcastle.png",
              //       title: "Build some Sand Castles",
              //       description: "Lets build a huge City Fort",
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
