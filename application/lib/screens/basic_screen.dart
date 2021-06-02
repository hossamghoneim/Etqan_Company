import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:etqan_company/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'chat.dart';
import 'degrees.dart';
import 'homework.dart';
import 'profile.dart';
import 'teacher_students.dart';
import 'types_management.dart';

class BasicScreen extends StatefulWidget {
  final String type;
  BasicScreen({@required this.type});
  @override
  _BasicScreenState createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  int _current_Navbar;
  int ChooseType() {
    if (widget.type == 'manager') {
      _current_Navbar = 2;
    } else if (widget.type == 'teaching') {
      _current_Navbar = 0;
    } else if (widget.type == 'student') {
      _current_Navbar = 1;
    } else if (widget.type == 'parents') {
      _current_Navbar = 3;
    }
  }

  List<List<Widget>> _modules = <List<Widget>>[
    //Navigator bar of Teacher
    [
      Profile(),
      HomeScreen(),
      TeacherStudents(),
      Chat(),
    ],
    //Navigator bar of Student
    [
      Profile(),
      HomeScreen(),
      Homework(),
      Chat(),
    ],
    //Navigator bar of Manager
    [
      Profile(),
      HomeScreen(),
      TypesManagement(),
      Chat(),
    ],
    //Navigator bar of Guardian
    [
      Profile(),
      HomeScreen(),
      Degrees(),
      Chat(),
    ]
  ];
  List<List<TabItem>> _navbar_modules = <List<TabItem>>[
    //Navbar of Teacher
    [
      TabItem(icon: Icons.person, title: 'Profile'),
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.people_outline, title: 'Students'),
      TabItem(icon: Icons.message, title: 'Message'),
    ],
    //Navbar of Student
    [
      TabItem(icon: Icons.people, title: 'Profile'),
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.work, title: 'Homework'),
      TabItem(icon: Icons.message, title: 'Message'),
    ],
    //Navbar of Manager
    [
      TabItem(icon: Icons.people, title: 'Profile'),
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.control_point, title: 'Management'),
      TabItem(icon: Icons.message, title: 'Message'),
    ],
    //Navbar of Guardian
    [
      TabItem(icon: Icons.people, title: 'Profile'),
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.description, title: 'Degree'),
      TabItem(icon: Icons.message, title: 'Message'),
    ],
  ];

  int _currentIndex = 1;
  @override
  void initState() {
    ChooseType();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Etqan Company'),
          centerTitle: true,
        ),
        body: _modules[_current_Navbar][_currentIndex],
        bottomNavigationBar: ConvexAppBar.badge(
          {3: '15'},

          badgeMargin: EdgeInsets.only(bottom: 30, right: 50),
          style: TabStyle.flip,
          top: MediaQuery.of(context).size.height * -.037,
          curveSize: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.height * .07,
          activeColor: Color(0xFF009DE0),
          color: Color(0xFF45C3ED),
          backgroundColor: Color(0xFFFCF9FF),
          items: _navbar_modules[_current_Navbar],

          initialActiveIndex: 1, //optional, default as 0
          onTap: _changeItem,
        ));
  }

  void _changeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
