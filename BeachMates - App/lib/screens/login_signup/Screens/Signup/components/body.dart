import 'package:b2b/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:b2b/screens/login_signup/Screens/Login/login_screen.dart';
import 'package:b2b/screens/login_signup/Screens/Signup/components/background.dart';
import 'package:b2b/screens/login_signup/Screens/Signup/components/or_divider.dart';
import 'package:b2b/screens/login_signup/Screens/Signup/components/social_icon.dart';
import 'package:b2b/screens/login_signup/components/already_have_an_account_acheck.dart';
import 'package:b2b/screens/login_signup/components/rounded_button.dart';
import 'package:b2b/screens/login_signup/components/rounded_input_field.dart';
import 'package:b2b/screens/login_signup/components/rounded_password_field.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinnner = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ModalProgressHUD(
      inAsyncCall: showSpinnner,
      progressIndicator: SpinKitDoubleBounce(
        color: Colors.red,
        size: 50.0,
      ),
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              // SvgPicture.asset(
              //   "assets/icons/signup.svg",
              //   height: size.height * 0.35,
              // ),
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

              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {
                  email = value;
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  password = value;
                },
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () async {
                  setState(() {
                    showSpinnner = true;
                  });
                  try {
                    UserCredential newUser =
                        await _auth.createUserWithEmailAndPassword(
                            email: email, password: password);
                    if (newUser != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TabContainerIndexedStack()),
                      );
                    }
                  } catch (e) {
                    print(e.toString());
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
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
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
