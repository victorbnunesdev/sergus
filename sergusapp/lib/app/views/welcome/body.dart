import 'package:flutter/material.dart';

import 'body_bottom.dart';
import 'body_main.dart';
import 'body_top.dart';

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
            flex: 4,
            child: BodyMain(),
          ),
          Expanded(
            flex: 1,
            child: BodyBottom(),
          ),
        ],
      ),
    ));
  }
}
