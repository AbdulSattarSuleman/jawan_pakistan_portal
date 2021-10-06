// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_portal/constant.dart';
import 'package:user_portal/home_page.dart';
import 'package:user_portal/screens/home_screen.dart';
import 'package:user_portal/screens/login_screen.dart';
import 'package:user_portal/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // initialRoute: '/homeScreen',

      home: HomePage(),
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      routes: {
        '/homePage': (context) => HomePage(),
        '/loginScreen': (context) => LoginScreen(),
        '/registerScreen': (context) => RegisterScreen(),
        '/homeScreen': (context) => HomeScreen(),
      },
    );
  }
}
