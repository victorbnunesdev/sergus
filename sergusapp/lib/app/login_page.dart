import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return Container(
        width: 300, height: 300, child: Image.asset('assets/images/logo.png'));
  }

  Widget _buttons() {
    return Container(
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                ButtonTheme(
                    height: 60,
                    buttonColor: Colors.green,
                    textTheme: ButtonTextTheme.primary,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        color: Colors.green,
                        onPressed: () {},
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ButtonTheme(
                    height: 60,
                    buttonColor: Colors.green[200],
                    textTheme: ButtonTextTheme.primary,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        color: Colors.green,
                        onPressed: () {},
                        child: Text(
                          "NÃO ASSOCIADO",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_body(), _buttons()],
          )
        ]));
  }
}
