import 'package:flutter/material.dart';
import 'package:homescreen_login_signup/code_parts/Inputfields.dart';
import 'package:homescreen_login_signup/code_parts/PasswordField.dart';
import 'package:homescreen_login_signup/code_parts/Rounded_Buttons.dart';
import 'package:homescreen_login_signup/code_parts/check_Account.dart';
import 'package:homescreen_login_signup/screens/LoginPage/login_screen.dart';
import 'package:homescreen_login_signup/screens/signupscreen/Parts/Background.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
          Image.asset('assets/image/Fill_Icon_Blank.png',
              height: size.height * 0.3,
              width: size.width * 0.35,
              alignment: Alignment.topCenter),
          Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          InputFieldBox(
              hinttexts: "Email Address",
              iconpart: Icons.person,
              onchanged: (value) {}),
          PasswordField(textname: "Password", onchanged: (value) {}),
          PasswordField(textname: "Confirm Password", onchanged: (value) {}),
          RoundedButton(
              text: "SIGN UP",
              press: () {},
              color: kPrimaryColor,
              textcolor: Colors.white),
          HaveAccountCheck(
            account: "Already have an Account? ",
            signinup: "Sign In",
            displayval: Colors.black,
            colorval: Colors.white,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          )
        ])));
  }
}
