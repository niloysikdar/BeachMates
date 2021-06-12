import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:b2b/FirstScreen.dart';
import 'package:b2b/SecondScreen.dart';
import 'package:b2b/ThirdScreen.dart';

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
  int tabIndex = 0;
  int _currentIndex = 0;
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      FirstScreen(),
      SecondScreen(),
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
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.yellowAccent,
          color: Colors.orangeAccent[100],
          buttonBackgroundColor: Colors.lightBlueAccent[100],
          index: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.view_list_rounded,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.save_rounded,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
