import 'package:flutter/material.dart';
import 'package:sergusapp/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton(
      {Key key,
      this.text,
      this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Center(
      child: TextButton(
        // minWidth: size.width * 0.7,
        // height: size.height * 0.1,
        // color: kPrimaryColor,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          minimumSize: MaterialStateProperty.all(
              Size(size.width * 0.7, size.height * 0.09)),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ));
  }
}
