import 'package:flutter/material.dart';

class AboutInitSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Center(
          child: Text('Seja bem vindo ao APP Sergus'),
        ),
        SizedBox(height: 10),
        Center(
          child: Text(
              'Aqui você poderá ver suas informações previdenciárias, como também aprender sobre o Novo Plano CD e fazer sua Pré-Adesão, Educação Previdenciária e Financeira.',
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
