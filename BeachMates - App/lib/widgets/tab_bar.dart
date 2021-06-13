import 'package:b2b/constants/colors.dart';
import 'package:b2b/screens/SecondScreen.dart';
import 'package:b2b/screens/live_events_screen.dart';
import 'package:b2b/screens/third_screen/ThirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabContainerIndexedStack(),
    );
  }
}

class TabContainerIndexedStack extends StatefulWidget {
  static const String id = '/screens.tab';
  @override
  _TabContainerIndexedStackState createState() =>
      _TabContainerIndexedStackState();
}

class _TabContainerIndexedStackState extends State<TabContainerIndexedStack> {
  int tabIndex = 1;
  int _currentIndex = 1;
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      SecondScreen(),
      LiveEvents(),
      ThirdScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: [
            SecondScreen(),
            LiveEvents(),
            ThirdScreen(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          backgroundColor: Colors.transparent,
          color: kyellow,
          buttonBackgroundColor: kblue,
          index: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: <Widget>[
            // Icon(
            //   Icons.home,
            //   size: 30,
            //   color: Colors.white,
            // ),
            Container(
              width: 30,
              height: 30,
              child: Image.asset("assets/images/image15.png"),
            ),
            Container(
              width: 30,
              height: 30,
              child: Image.asset("assets/images/image10.png"),
            ),
            Container(
              width: 30,
              height: 30,
              child: Image.asset("assets/images/image13.png"),
            ),

            // SvgPicture.asset(
            //   "assets/icons/image15.svg",
            //   height: 10,
            // ),
            // Icon(
            //   Icons.view_list_rounded,
            //   size: 30,
            //   color: Colors.white,
            // ),
            // Icon(
            //   Icons.save_rounded,
            //   size: 30,
            //   color: Colors.white,
            // ),
          ],
        ),
      ),
    );
  }
}
