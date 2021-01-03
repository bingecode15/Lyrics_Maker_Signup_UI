import 'package:flutter/material.dart';
import 'package:lyrics_maker_app/Screens/LandingScreen/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lyrics Maker App",
      home: LandingScreen(),
    );
  }
}
