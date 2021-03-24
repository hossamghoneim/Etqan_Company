import 'package:flutter/material.dart';

class TeacherStudents extends StatefulWidget {
  @override
  _TeacherStudentsState createState() => _TeacherStudentsState();
}

class _TeacherStudentsState extends State<TeacherStudents> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Teacher Students Page",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
