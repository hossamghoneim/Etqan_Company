import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Chat Page",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
