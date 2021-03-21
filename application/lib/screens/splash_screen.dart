import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'welcome_screen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => new _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        "تطبيق شركة الإتقان",
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      seconds: 5,
      navigateAfterSeconds: WelcomeScreen(),
      image: Image.asset(
        "assets/background.jpeg",
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width * 0.55,
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      onClick: () => print("Welcome"),
      loaderColor: Color(0xff192a48),
      photoSize: 150.0,
    );
  }
}
