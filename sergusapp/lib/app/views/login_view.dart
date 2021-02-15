import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.purple, width: 10, style: BorderStyle.solid),
            ),
            icon: Icon(Icons.person),
            labelText: "Matrícula"),
      ),
      TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.purple, width: 10, style: BorderStyle.solid),
            ),
            icon: Icon(Icons.lock),
            labelText: "Senha"),
      ),
    ]);
  }
}
