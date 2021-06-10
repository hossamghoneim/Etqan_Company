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
            PopupMenuButton(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                margin: EdgeInsets.only(top: 30, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.5,
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_drop_down),
                        Text('Choose the year'),
                      ]),
                ),
              ),
              initialValue: 0,
              elevation: 15.0,
              onSelected: (item) => SelectedItem(context, item),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Save Post'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Edit Post'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('Delete Post'),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text('Un Save Post'),
                ),
              ],
            ),
            PopupMenuButton(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                margin: EdgeInsets.only(top: 30, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.5,
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_drop_down),
                      Text(
                        'Choose the material',
                      ),
                    ],
                  ),
                ),
              ),
              initialValue: 0,
              elevation: 15.0,
              onSelected: (item) => SelectedItem(context, item),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Save Post'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Edit Post'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('Delete Post'),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text('Un Save Post'),
                ),
              ],
            ),
          ],
        ),
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

SelectedItem(BuildContext context, item) {
  if (item == 0) {
    print('Save Post Case');
    Navigator.pushNamed(context, '/saved_post_screen');
  }
  if (item == 1) {
    print('Edit Post Case');
  }
  if (item == 2) {
    print('Delete Post Case');
  }
  if (item == 3) {
    print('Un Save Post Case');
  }
}
