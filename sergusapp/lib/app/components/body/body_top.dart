import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.7,
              child: Image.asset(
                "assets/images/main_top2.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.6,
              child: Image.asset(
                "assets/images/main_top.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        Container(
          height: size.height * 0.66,
          width: size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                child: AnimatedContainer(
                  padding: EdgeInsets.only(top: size.height * 0.1),
                  duration: Duration(seconds: 2),
                  child: Image.asset(
                    "assets/images/main_logo.png",
                    height: size.height * 0.25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
