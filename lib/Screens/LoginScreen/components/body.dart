import 'package:flutter/material.dart';
import 'package:lyrics_maker_app/Screens/LandingScreen/landing_screen.dart';
import 'package:lyrics_maker_app/Screens/LoginScreen/components/login_textfield.dart';
import 'package:lyrics_maker_app/Screens/LoginScreen/components/social_media_button.dart';
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
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/soundtrapunsplash.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            color: Colors.black.withOpacity(0.75),
          ),
          Column(
            children: [
              SizedBox(height: size.height * 0.02),
              Container(
                width: size.width * 0.7,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "LYRICS",
                    style: kHeadingTextStyle.copyWith(
                      fontSize: 75,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.7,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Text(
                      "MAKER",
                      style: kHeadingTextStyle.copyWith(
                        fontSize: 75,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              LoginTextField(labelText: "Full Name"),
              LoginTextField(labelText: "Email"),
              LoginTextField(labelText: "Password"),
              SizedBox(height: size.height * 0.03),
              Button(
                buttonText: "Join us",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LandingScreen(),
                    ),
                  );
                },
                size: size,
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                "No credit card required",
                style: kContentTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Divider(
                color: kPrimaryColor,
                indent: 60,
                endIndent: 60,
              ),
              SizedBox(height: size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton(
                    imageSrc: "assets/icons/fb.png",
                    color: Colors.blue,
                  ),
                  SizedBox(width: size.width * 0.07),
                  SocialMediaButton(
                    imageSrc: "assets/icons/google.png",
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                "By continuing, you agree to accept our Terms of Use and Privacy Policy",
                style: kContentTextStyle,
              ),
              SizedBox(height: size.height * 0.02),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already a member?  ",
                      style: kContentTextStyle,
                    ),
                    TextSpan(
                      text: "Sign In",
                      style: kSignInTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
