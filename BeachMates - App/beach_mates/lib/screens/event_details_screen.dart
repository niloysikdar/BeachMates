import 'package:b2b/constants/colors.dart';
import 'package:b2b/widgets/details_header.dart';
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
            detailsHeader(size: size),
          ],
        ),
      ),
    );
  }
}
