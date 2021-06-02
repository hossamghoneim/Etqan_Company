import 'package:flutter/material.dart';

import '../widgets/students_screen_widget.dart';
import 'lis_of_students.dart';

class TeacherStudents extends StatefulWidget {
  @override
  _TeacherStudentsState createState() => _TeacherStudentsState();
}

class _TeacherStudentsState extends State<TeacherStudents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StudentsScreenWidget(
              iconData: Icons.star,
              title: 'الدرجات',
              color: Colors.orangeAccent,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListOfStudents(
                      originName: 'Degrees',
                    ),
                  ),
                );
              },
            ),
            StudentsScreenWidget(
              iconData: Icons.work,
              title: 'الواجبات',
              color: Colors.orangeAccent,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListOfStudents(
                      originName: 'Home Work',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        StudentsScreenWidget(
          iconData: Icons.group,
          title: 'جميع الطلاب',
          color: Colors.orangeAccent,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListOfStudents(
                  originName: 'Students',
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
