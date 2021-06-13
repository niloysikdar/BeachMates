import 'package:flutter/material.dart';
import 'package:b2b/screens/login_signup/Screens/Login/login_screen.dart';
import 'package:b2b/screens/login_signup/Screens/Signup/signup_screen.dart';
import 'package:b2b/screens/login_signup/Screens/Welcome/components/background.dart';
import 'package:b2b/screens/login_signup/components/rounded_button.dart';
import 'package:b2b/screens/login_signup/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            SizedBox(height: 10),
            Text(
              "let's go for adventure together",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.orangeAccent),
            ),
            SizedBox(height: 10),
            RoundedButton(
              text: "LOGIN",
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
