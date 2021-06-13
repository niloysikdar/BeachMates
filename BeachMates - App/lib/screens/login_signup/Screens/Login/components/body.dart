import 'package:b2b/screens/choose_beach.dart';
import 'package:flutter/material.dart';
import 'package:b2b/screens/login_signup/Screens/Login/components/background.dart';
import 'package:b2b/screens/login_signup/Screens/Signup/signup_screen.dart';
import 'package:b2b/screens/login_signup/components/already_have_an_account_acheck.dart';
import 'package:b2b/screens/login_signup/components/rounded_button.dart';
import 'package:b2b/screens/login_signup/components/rounded_input_field.dart';
import 'package:b2b/screens/login_signup/components/rounded_password_field.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ModalProgressHUD(
      progressIndicator: SpinKitDoubleBounce(
        color: Colors.blue,
        size: 50.0,
      ),
      inAsyncCall: showSpinner,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.03),
              // SvgPicture.asset(
              //   "assets/icons/login.svg",
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
                text: "LOGIN",
                press: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      print("true");
                      // Navigator.pushNamed(context, TabContainerIndexedStack.id);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseBeach(),
                        ),
                      );
                    }
                  } catch (e) {
                    print(e.toString());
                  }
                },
              ),

              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
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
      ),
    );
  }
}
