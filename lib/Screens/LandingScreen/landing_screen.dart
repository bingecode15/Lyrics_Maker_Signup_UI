import 'package:flutter/material.dart';
import 'package:lyrics_maker_app/Screens/LandingScreen/components/body.dart';

class LandingScreen extends StatelessWidget {
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
