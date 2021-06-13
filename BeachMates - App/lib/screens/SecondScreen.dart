import 'package:b2b/constants/colors.dart';
import 'package:b2b/screens/second_screen/live_events_header.dart';
import 'package:b2b/widgets/sorting_text.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.35,
                ),
                child: Column(
                  children: [
                    secondCard(imagepath: "assets/images/item_1.jpg"),
                    secondCard(imagepath: "assets/images/item_2.jpg"),
                    secondCard(imagepath: "assets/images/item_3.jpg"),
                    secondCard(imagepath: "assets/images/item_4.jpg"),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                color: kwhite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    liveEventsHeader(size: size),
                    sortText(text: "Top Rated"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget secondCard({
    @required String imagepath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Container(
        height: 150,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                imagepath,
              ),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 10,
                offset: Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
