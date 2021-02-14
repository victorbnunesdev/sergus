import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/body/body_top.dart';
import 'package:sergusapp/app/controllers/app_controller.dart';
import 'package:sergusapp/app/views/login_view.dart';

import 'body_bottom.dart';
import 'body_main.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoginPage;

  @override
  Widget build(BuildContext context) {
    setState(() {
      isLoginPage = false;
    });

    return Column(
      children: [
        Expanded(
          flex: 6,
          child: BodyTop(),
        ),
        Expanded(
            flex: 2,
            child: AnimatedContainer(
              duration: Duration(seconds: 40),
              curve: Curves.easeInToLinear,
              child:
                  AppController.instance.isDarkTheme ? LoginView() : BodyMain(),
            )),
        Expanded(
          flex: 1,
          child: BodyBottom(),
        ),
      ],
    );
  }
}
