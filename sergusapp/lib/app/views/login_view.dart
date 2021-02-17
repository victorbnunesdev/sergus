import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/default_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.purple,
                          width: 10,
                          style: BorderStyle.solid),
                    ),
                    labelText: "Matrícula"),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.purple,
                          width: 10,
                          style: BorderStyle.solid),
                    ),
                    labelText: "Senha"),
              ),
              Row(children: [
                Expanded(
                  child: RoundedButton(
                    text: "Entrar",
                    press: () {
                      Navigator.of(context).pushReplacementNamed('/minhaconta');
                    },
                  ),
                )
              ]),
            ]));
  }
}
