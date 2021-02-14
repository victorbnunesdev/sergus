import 'package:flutter/material.dart';

class PrivacyPolicySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Center(
          child: Text(
            'POLÍTICA DE PRIVACIDADE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}

final String text =
    "O Sergus se resguarda no direito de gravar seu IP, tipo de navegador, aparelho e operadora de celular, posição geográfica e outros dados relativos aos acessos solicitados.\n\n"
    "Não será divulgado publicamente nem a terceiros suas informações de modo que possam identificá-lo, mas pode fazê-lo de forma agregada no intuito de realizar análises, estudos, melhoria do sistema e por força de ordem judicial.\n\n"
    "O Sergus está fortemente comprometido em manter a sua privacidade quando estiver visitando o nosso aplicativo. Algumas das informações mantidas no nosso servidor são informações que o participante possui em nossas bases de cadastro e quando o mesmo nos fornece através de formulários, enquanto que algumas são obtidas automaticamente.";
