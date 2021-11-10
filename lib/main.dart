import 'package:flutter/material.dart';
import 'package:homescreen_login_signup/screens/welcomescreen/Homepage.dart';
import 'package:homescreen_login_signup/constants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
    home: Homepage(),
  ));
}
