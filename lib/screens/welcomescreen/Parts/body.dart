import 'package:flutter/material.dart';
import 'package:homescreen_login_signup/code_parts/Rounded_Buttons.dart';
import 'package:homescreen_login_signup/constants.dart';
import 'package:homescreen_login_signup/screens/LoginPage/login_screen.dart';
import 'package:homescreen_login_signup/screens/signupscreen/Signup_Screen.dart';
import 'package:homescreen_login_signup/screens/welcomescreen/Parts/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/image/Fill_Icon_Blank.png',
            height: size.height * 0.3,
            width: size.width * 0.35,
            alignment: Alignment.topCenter),
        SizedBox(
          height: size.height * 0.019,
        ),
        Text(
          "WELCOME TO FILL",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.022,
        ),
        RoundedButton(
          text: " Login ",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
          color: kPrimaryColor,
          textcolor: Colors.white,
        ),
        SizedBox(
          height: size.height * 0.022,
        ),
        RoundedButton(
          text: "Sign Up",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignUpScreen();
            }));
          },
          color: kPrimaryLightColor,
          textcolor: Colors.black,
        ),
      ],
    ));
  }
}
