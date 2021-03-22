import 'package:flutter/material.dart';
import 'constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "ليس لديك حساب ؟" : "هل لديك حساب ؟",
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: MediaQuery.of(context).size.height * 0.025),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "إنشاء حساب" : "تسجيل الدخول",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.025,
            ),
          ),
        )
      ],
    );
  }
}
