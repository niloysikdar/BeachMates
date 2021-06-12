import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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