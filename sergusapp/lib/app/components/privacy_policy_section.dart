import 'package:flutter/material.dart';

class PrivacyPolicySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Text('POLÍTICA DE PRIVACIDADE'),
        SizedBox(height: 10),
        Text('Bem-vindo ao aplicativo do Portal do Participante!'),
        SizedBox(height: 10),
        Text(
            'O Sergus se resguarda no direito de gravar seu IP, tipo de navegador, aparelho e operadora de celular, posição geográfica e outros dados relativos aos acessos solicitados.'),
        SizedBox(height: 10),
        Text(
            'Não será divulgado publicamente nem a terceiros suas informações de modo que possam identificá-lo, mas pode fazê-lo de forma agregada no intuito de realizar análises, estudos, melhoria do sistema e por força de ordem judicial.'),
        SizedBox(height: 10),
        Text(
            'O Sergus está fortemente comprometido em manter a sua privacidade quando estiver visitando o nosso aplicativo. Algumas das informações mantidas no nosso servidor são informações que o participante possui em nossas bases de cadastro e quando o mesmo nos fornece através de formulários, enquanto que algumas são obtidas automaticamente.'),
      ],
    );
  }
}
