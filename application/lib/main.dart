import 'package:flutter/material.dart';

import 'screens/lis_of_students.dart';
import 'screens/splash_screen.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreenPage(),
          '/welcome_screen': (context) => WelcomeScreen(),
          '/list_of_students': (context) => ListOfStudents(),
        });
  }
}
