import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentsScreenWidget extends StatelessWidget {
  IconData iconData;
  String title;
  Color color;
  Function onPress;
  StudentsScreenWidget({this.iconData, this.title, this.color, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 4),
              blurRadius: 8.0,
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.width * 0.35,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
              size: MediaQuery.of(context).size.width * 0.15,
            ),
            Text(
              title,
              style: TextStyle(shadows: [
                Shadow(offset: Offset.fromDirection(0.4), blurRadius: 2.5)
              ], fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
