import 'package:flutter/material.dart';
import 'package:flutter_admin_levitate/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Levitate',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Color.fromARGB(255, 52, 73, 85),
        accentColor: Color.fromARGB(255, 249, 170, 51),
      ),
    );
  }
}

/*
 primary: 700 #344955 Color.fromARGB(255, 52, 73, 85)
          800 #232F34 Color.fromARGB(255, 35, 47, 52)
          600 #4A6572 Color.fromARGB(255, 74, 101, 114)

 secondary: 500 #F9AA33 Color.fromARGB(255, 249, 170, 51)
*/