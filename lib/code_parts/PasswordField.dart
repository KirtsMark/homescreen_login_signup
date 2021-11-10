import 'package:flutter/material.dart';
import 'TextBoxField.dart';
import 'package:homescreen_login_signup/constants.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onchanged;
  final String textname;
  const PasswordField(
      {Key? key, required this.onchanged, required this.textname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextBoxField(
      child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              hintText: textname,
              suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
              border: InputBorder.none)),
    );
  }
}
