import 'package:flutter/material.dart';

class SobreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset('assets/images/logo2.png'),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Card(child: Text('Sou Participante')),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                  ),
                  RaisedButton(
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Card(child: Text('Quero conhecer a SERGUS')),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/sobre');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
