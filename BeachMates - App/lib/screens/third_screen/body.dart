import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:b2b/screens/third_screen/data.dart';
import 'package:b2b/screens/third_screen/colors.dart';
import 'package:b2b/constants/colors.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {
  CardController controller;

  List itemsTemp = [];
  int itemLength = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      itemsTemp = explore_json;
      itemLength = explore_json.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
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
                color: kyellow,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Meet\nNew\nPeople",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 9,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.60,
              child: TinderSwapCard(
                totalNum: itemLength,
                maxWidth: MediaQuery.of(context).size.width * 0.95,
                maxHeight: MediaQuery.of(context).size.height * 0.60,
                minWidth: MediaQuery.of(context).size.width * 0.70,
                minHeight: MediaQuery.of(context).size.height * 0.45,
                cardBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: grey.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 2),
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(itemsTemp[index]['img']),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: size.height,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                black.withOpacity(0.25),
                                black.withOpacity(0),
                              ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Container(
                                      width: size.width * 0.72,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                itemsTemp[index]['name'],
                                                style: TextStyle(
                                                    color: white,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: 10,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "My Interests",
                                                style: TextStyle(
                                                  color: white,
                                                  fontSize: 18,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: List.generate(
                                                    itemsTemp[index]['likes1'].length,
                                                    (indexLikes) {
                                                  if (indexLikes == 0) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(right: 8),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: white, width: 2),
                                                            borderRadius:
                                                                BorderRadius.circular(30),
                                                            color:
                                                                white.withOpacity(0.4)),
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(
                                                              top: 3,
                                                              bottom: 3,
                                                              left: 10,
                                                              right: 10),
                                                          child: Text(
                                                            itemsTemp[index]['likes1']
                                                                [indexLikes],
                                                            style:
                                                                TextStyle(color: white),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.only(right: 8),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(30),
                                                          color: white.withOpacity(0.2)),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(
                                                            top: 3,
                                                            bottom: 3,
                                                            left: 10,
                                                            right: 10),
                                                        child: Text(
                                                          itemsTemp[index]['likes1']
                                                              [indexLikes],
                                                          style: TextStyle(color: white),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                ),
                                              ),

                                              SizedBox(height: 10,),
                                              Row(
                                                children: List.generate(
                                                    itemsTemp[index]['likes2'].length,
                                                        (indexLikes) {
                                                      if (indexLikes == 0) {
                                                        return Padding(
                                                          padding:
                                                          const EdgeInsets.only(right: 8),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                // border: Border.all(
                                                                //     color: white, width: 2),
                                                                borderRadius:
                                                                BorderRadius.circular(30),
                                                                color:
                                                                white.withOpacity(0.2)),
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(
                                                                  top: 3,
                                                                  bottom: 3,
                                                                  left: 10,
                                                                  right: 10),
                                                              child: Text(
                                                                itemsTemp[index]['likes2']
                                                                [indexLikes],
                                                                style:
                                                                TextStyle(color: white),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      return Padding(
                                                        padding:
                                                        const EdgeInsets.only(right: 8),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(30),
                                                              color: white.withOpacity(0.2)),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(
                                                                top: 3,
                                                                bottom: 3,
                                                                left: 10,
                                                                right: 10),
                                                            child: Text(
                                                              itemsTemp[index]['likes2']
                                                              [indexLikes],
                                                              style: TextStyle(color: white),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                  // print(itemsTemp.length);
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                  if (index == (itemsTemp.length - 1)) {
                    setState(() {
                      itemLength = itemsTemp.length - 1;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
