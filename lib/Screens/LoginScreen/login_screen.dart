import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lyrics_maker_app/Screens/LoginScreen/components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Body(size: size),
      ),
    );
  }
}
