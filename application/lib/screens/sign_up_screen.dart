import 'package:flutter/material.dart';
import 'package:etqan_company/utilities/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:etqan_company/utilities/background.dart';
import 'package:etqan_company/widgets/rounded_field.dart';
import 'package:etqan_company/widgets/rounded_button_login.dart';
import 'package:etqan_company/widgets/text_field_container.dart';
import 'package:etqan_company/utilities/already_have_account.dart';
import 'package:etqan_company/screens/login_screen.dart';

bool _obscureText = true;

class SignUp extends StatefulWidget {
  final String type;
  SignUp({@required this.type});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  setpref(String s1) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setString("Qualification", s1);
    });
  }

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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "إنشاء حساب",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.027,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.22,
                      ),
                      IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                  Image.asset(
                    "assets/${widget.type}-icon.png",
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                  RoundedField(
                    txt: "اسم المستخدم",
                    iconitem: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    onChanged: (value) {},
                  ),
                  RoundedField(
                    txt: "اسم ولي الامر الرباعي",
                    iconitem: Icon(
                      Icons.person_pin,
                      color: kPrimaryColor,
                    ),
                    onChanged: (value) {},
                  ),
                  RoundedField(
                    txt: "رقم الهاتف",
                    iconitem: Icon(
                      Icons.mobile_screen_share,
                      color: kPrimaryColor,
                    ),
                    onChanged: (value) {},
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
                    text: "إنشاء حساب",
                    press: () {},
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen(
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
