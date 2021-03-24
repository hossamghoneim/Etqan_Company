import 'package:flutter/material.dart';

class TypesManagement extends StatefulWidget {
  @override
  _TypesManagementState createState() => _TypesManagementState();
}

class _TypesManagementState extends State<TypesManagement> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Types Management Page",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
