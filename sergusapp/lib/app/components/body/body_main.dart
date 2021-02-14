import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/empty_button.dart';

import '../default_button.dart';

class BodyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedButton(
            text: "Entrar",
            press: () {},
          ),
          EmptyButton(
            text: "Quero conhecer a Sergus",
            press: () {
              Navigator.of(context).pushReplacementNamed('/about');
            },
          ),
        ],
      ),
    );
  }
}
