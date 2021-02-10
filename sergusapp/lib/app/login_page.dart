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
                Expanded(
                  child: ButtonTheme(
                    height: 60,
                    buttonColor: Colors.green,
                    textTheme: ButtonTextTheme
                        .primary, //  <-- this auto selects the right color
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/sobre');
                      },
                      child: Text(
                        "ENTRAR",
                        style: new TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonTheme(
                    height: 60,
                    buttonColor: Colors.green,
                    textTheme: ButtonTextTheme.primary,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/sobre');
                      },
                      child: Text(
                        "CRIAR MEU ACESSO",
                        style: new TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonTheme(
                    height: 60,
                    buttonColor: Colors.green,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/sobre');
                      },
                      child: Text(
                        "AINDA NÃO SOU PARTICIPANTE",
                        style: new TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
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
