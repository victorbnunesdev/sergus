import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/empty_button.dart';
import 'package:sergusapp/app/controllers/app_controller.dart';

import '../default_button.dart';

class BodyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundedButton(
          text: "Acessar minha conta",
          press: () {
            AppController.instance.changeTheme();
          },
        ),
        EmptyButton(
          text: "Quero ser Sergus",
          press: () {
            Navigator.of(context).pushReplacementNamed('/sobre');
          },
        ),
      ],
    );
  }
}
