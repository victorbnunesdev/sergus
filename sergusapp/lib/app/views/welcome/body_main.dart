import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/empty_button.dart';
import 'package:sergusapp/app/controllers/app_controller.dart';

import '../../components/default_button.dart';
import '../login_view.dart';

class BodyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: AppController.instance.getPageController(),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  text: "Acessar minha conta",
                  press: () {
                    AppController.instance.changePage();
                  },
                ),
                EmptyButton(
                  text: "Quero ser Sergus",
                  press: () {
                    Navigator.of(context).pushReplacementNamed('/sobre');
                  },
                ),
              ],
            ),
          ),
          LoginView(),
        ],
      ),
    );
  }
}
