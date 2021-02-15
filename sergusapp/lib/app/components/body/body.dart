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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: BodyTop(),
          ),
          Expanded(
              flex: 3,
              child: AnimatedContainer(
                  duration: Duration(seconds: 40),
                  curve: Curves.easeInToLinear,
                  child: Container(
                    child: AppController.instance.isLoginView
                        ? LoginView()
                        : BodyMain(),
                  ))),
          Expanded(
            flex: 1,
            child: BodyBottom(),
          ),
        ],
      ),
    ));
  }
}
