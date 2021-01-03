import 'package:flutter/material.dart';
import 'package:lyrics_maker_app/Screens/LoginScreen/login_screen.dart';
import 'package:lyrics_maker_app/Widgets/button.dart';
import 'dart:math' as math;

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/obafemi.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: size.width * 0.8,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.04),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "CREATE ANY ",
                      style: kHeadingTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: "LYRICS",
                      style: kHeadingTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.8,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Text(
                "FROM YOUR PHONE",
                style: kHeadingTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.6),
          Text(
            "Join The Community",
            style: kButtonTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
          Text(
            "The Ultimate Lyrics Maker App",
            style: kButtonTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Button(
            size: size,
            buttonText: "Get Started",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
