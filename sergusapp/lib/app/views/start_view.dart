import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(
                width: 120, child: Image.asset('assets/images/logo2.png'))),
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF0C7A4D),
                  const Color(0xFF29B97C),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonTheme(
                  minWidth: 150.0,
                  height: 150.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/sobre');
                    },
                    child: Text("Sou Participante"),
                  ),
                ),
                ButtonTheme(
                  minWidth: 150.0,
                  height: 150.0,
                  shape: RoundedRectangleBorder(),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/sobre');
                    },
                    child: Text("Quero conhecer a SERGUS"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
