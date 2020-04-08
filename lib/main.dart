import 'package:flutter/material.dart';
import 'package:chanda/login_page.dart';
import 'package:chanda/welcome_page.dart';
import 'package:chanda/home_page.dart';

void main() {
  runApp(DeenApp());
}


class DeenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chanda",
      theme: ThemeData(
          accentColor: Colors.black,
          primaryColor: Color(0xFF90CAF9),
          fontFamily: "Montserrat"
      ),
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome_page' : (context) => WelcomePage(),
        '/home_page' : (context) => HomePage(),
        '/login_page' : (context) => LoginPage(),
      },
    );
  }
}