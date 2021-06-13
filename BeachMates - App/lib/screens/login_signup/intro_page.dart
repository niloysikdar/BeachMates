import 'package:flutter/material.dart';
import 'package:b2b/screens/login_signup/Screens/Welcome/welcome_screen.dart';
import 'package:b2b/screens/login_signup/constants.dart';

class IntroPage extends StatelessWidget {
  static const String id = '/intro';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
