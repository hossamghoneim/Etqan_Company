import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:etqan_company/utilities/constants.dart';
import 'package:etqan_company/utilities/background.dart';
import 'package:etqan_company/widgets/rounded_button_welcome.dart';
import 'package:etqan_company/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  setpref(String s1) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setString("usertype", s1);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Background(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.28,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/welcomepage3.jpg",
                                )))),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.35,
                    ),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.28,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/welcomepage2.jpg",
                                )))),
                  ),
                  RoundedButtonWelcome(
                    text: "مدير",
                    press: () {
                      setpref("Manager");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen(type: "manager");
                          },
                        ),
                      );
                    },
                  ),
                  RoundedButtonWelcome(
                    text: "معلم",
                    color: kPrimaryLightColor,
                    textColor: Colors.black,
                    press: () {
                      setpref("Teacher");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen(type: "teaching");
                          },
                        ),
                      );
                    },
                  ),
                  RoundedButtonWelcome(
                    text: "طالب",
                    press: () {
                      setpref("Student");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen(
                              type: "student",
                            );
                          },
                        ),
                      );
                    },
                  ),
                  RoundedButtonWelcome(
                    text: "ولي امر ",
                    color: kPrimaryLightColor,
                    textColor: Colors.black,
                    press: () {
                      setpref("Guardian");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen(type: "parents");
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
