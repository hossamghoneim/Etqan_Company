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
              iconData: Icons.star_rate_rounded,
              title: 'الدرجات',
              color: Colors.orangeAccent,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListOfStudents(
                      origin_name: 'Degrees',
                    ),
                  ),
                );
              },
            ),
            StudentsScreenWidget(
              iconData: Icons.home_work_rounded,
              title: 'الواجبات',
              color: Colors.orangeAccent,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListOfStudents(
                      origin_name: 'Home Work',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        StudentsScreenWidget(
          iconData: Icons.group_rounded,
          title: 'جميع الطلاب',
          color: Colors.orangeAccent,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListOfStudents(
                  origin_name: 'Students',
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
