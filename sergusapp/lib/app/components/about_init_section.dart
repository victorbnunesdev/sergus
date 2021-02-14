import 'package:flutter/material.dart';

class AboutInitSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Center(
          child: Text(
            'BEM VINDO',
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

final String text = "Aqui você poderá ver suas informações previdenciárias, "
    "como também aprender sobre o Novo Plano CD e fazer sua Pré-Adesão, Educação"
    " Previdenciária e Financeira.";
