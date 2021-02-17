import 'package:flutter/material.dart';
import 'package:sergusapp/app/controllers/app_controller.dart';
import 'package:sergusapp/constants.dart';

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
                child: Container(
                  padding: EdgeInsets.only(top: size.height * 0.05),
                  child: Image.asset(
                    "assets/images/main_logo.png",
                    height: size.height * 0.25,
                  ),
                ),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Material(
              color: kPrimaryColor,
              child: AppController.instance.isLoginView
                  ? Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.transparent,
                        shape: InputBorder.none,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_rounded),
                        color: Colors.white,
                        focusColor: Colors.transparent,
                        disabledColor: Colors.transparent,
                        onPressed: () {
                          AppController.instance.changePage();
                        },
                      ),
                    )
                  : Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.lightGreen,
                        shape: CircleBorder(),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
