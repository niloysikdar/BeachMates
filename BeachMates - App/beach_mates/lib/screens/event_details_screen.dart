import 'package:b2b/constants/colors.dart';
import 'package:b2b/widgets/comment.dart';
import 'package:b2b/widgets/details_header.dart';
import 'package:b2b/widgets/sorting_text.dart';
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              detailsHeader(size: size),
              sortText(text: "Sort by: Newest"),
              commentCard(
                size: size,
                author: "Shuchit Pant",
                text: "Hey Bros, Can I join ?",
              ),
              commentCard(
                size: size,
                author: "Rahul Devaan",
                text: "I am in!!!!",
              ),
              commentCard(
                size: size,
                author: "Khushi",
                text: "Yayyyy!! Can I join??",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
