import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key key,
    this.labelText,
  }) : super(key: key);
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 50, right: 50),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
          suffixIcon: labelText == "Password"
              ? Icon(
                  Icons.visibility,
                  color: kPrimaryColor,
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
              width: 2,
              color: kPrimaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
              width: 2,
              color: kPrimaryColor,
            ),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
