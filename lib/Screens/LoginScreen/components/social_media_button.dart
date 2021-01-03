import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key key,
    this.imageSrc,
    this.color,
  }) : super(key: key);

  final String imageSrc;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      borderSide: BorderSide(color: color, width: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Image.asset(imageSrc),
    );
  }
}
