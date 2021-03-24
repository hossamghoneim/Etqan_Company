import 'package:flutter/material.dart';

class Degrees extends StatefulWidget {
  @override
  _DegreesState createState() => _DegreesState();
}

class _DegreesState extends State<Degrees> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Degrees Page",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
