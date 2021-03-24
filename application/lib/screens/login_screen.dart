import 'package:flutter/material.dart';
import 'package:etqan_company/utilities/constants.dart';
import 'package:etqan_company/utilities/background.dart';
import 'package:etqan_company/widgets/text_field_container.dart';
import 'package:etqan_company/widgets/rounded_field.dart';
import 'package:etqan_company/widgets/rounded_button_login.dart';
import 'package:etqan_company/utilities/already_have_account.dart';
import 'sign_up_screen.dart';
import 'basic_screen.dart';

bool _obscureText = true;

class LoginScreen extends StatefulWidget {
  final String type;
  LoginScreen({@required this.type});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Background(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.24,
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Image.asset(
                    "assets/${widget.type}-icon.png",
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.45,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  RoundedField(
                    txt: "اسم المستخدم",
                    iconitem: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                  ),
                  TextFieldContainer(
                      child: TextField(
                    obscureText: _obscureText,
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      hintText: "كلمة المرور",
                      icon: Icon(
                        Icons.lock,
                        color: kPrimaryColor,
                      ),
                      suffixIcon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: kPrimaryColor,
                      ),
                      border: InputBorder.none,
                    ),
                  )),
                  RoundedButtonLogin(
                    text: "تسجيل الدخول",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BasicScreen(
                              type: widget.type,
                            );
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUp(
                              type: widget.type,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
