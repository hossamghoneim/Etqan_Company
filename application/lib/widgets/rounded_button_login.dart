import 'package:flutter/material.dart';
import 'package:etqan_company/utilities/constants.dart';

class RoundedButtonLogin extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonLogin({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02),
      width: MediaQuery.of(context).size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.024,
              horizontal: MediaQuery.of(context).size.width * 0.02),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}