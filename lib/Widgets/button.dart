import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.size,
    this.press,
    this.buttonText,
  }) : super(key: key);

  final Size size;
  final Function press;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: size.height * 0.06,
        width: size.width * 0.75,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
