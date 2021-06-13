import 'package:b2b/constants/colors.dart';
import 'package:b2b/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class ChooseBeach extends StatelessWidget {
  final List<String> beachNames = [
    "Maria Beach",
    "Gupta Beach",
    "Kumar Beach",
    "Rangaa Beach",
    "Rock Beach",
    "Brown Beach",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                padding: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 25,
                ),
                decoration: BoxDecoration(
                  color: kblue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  "Choose your beach here",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 7,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: beachNames
                    .map(
                      (name) => beachButton(
                        context: context,
                        text: name,
                        size: size,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget beachButton({
    @required BuildContext context,
    @required String text,
    @required Size size,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TabContainerIndexedStack(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: kyellow,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
