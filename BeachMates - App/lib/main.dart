import 'package:b2b/constants/colors.dart';
import 'package:b2b/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:b2b/screens/login_signup/intro_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((val) {
    debugPrint('main');
    FirebaseAuth.instance.authStateChanges().listen((event) {
      debugPrint('event ${event.toString()}');
    });
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: kwhite,
      ),
      // initialRoute: TabContainerIndexedStack.id,
      initialRoute: IntroPage.id,
      routes: {
        TabContainerIndexedStack.id: (context) => TabContainerIndexedStack(),
        IntroPage.id: (context) => IntroPage(),
      },
    );
  }
}
