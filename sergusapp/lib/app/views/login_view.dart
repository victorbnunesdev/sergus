import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/default_button.dart';
import 'package:http/http.dart' as http;
import 'package:sergusapp/app/models/user_account.dart';

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
                    press: () async {
                      var result = await createAlbum();
                    },
                  ),
                ),
                FutureBuilder(
                    future: createAlbum(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if (snapshot.data)
                          Navigator.of(context)
                              .pushReplacementNamed('/minhaconta');
                      } else {
                        return Scaffold(
                          body: Center(child: CircularProgressIndicator()),
                        );
                      }
                    })
              ]),
            ]));
  }

  Future<bool> createAlbum() async {
    String url =
        'https://wwws2.banese.com.br/sergusPortalDoParticipante/Api/Login';

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String>{
        'matricula': '8516626',
        'plano': 'BD',
        'senha': '1975'
      }),
    );

    // sample info available in response
    int statusCode = response.statusCode;

    if (statusCode == 200) {
      if (response.body == "[]") {
        return false;
      } else {
        var jsonResponse = jsonDecode(response.body)[0];

        final usuario = UserAccount.fromJson(jsonResponse);
        if (usuario.nome == 'Roberto Simoes Lessa') return true;
      }
    } else {
      return false;
    }
  }
}
