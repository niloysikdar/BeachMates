import 'package:b2b/tab_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: TabContainerIndexedStack.id,
      routes: {
        TabContainerIndexedStack.id: (context) =>
            TabContainerIndexedStack(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('B2B'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Hi'),
            ],
          ),
        ),
      ),
    );
  }
}