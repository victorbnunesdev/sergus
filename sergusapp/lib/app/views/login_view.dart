import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.purple, width: 20, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
