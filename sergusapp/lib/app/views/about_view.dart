import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SERGUS'),
        actions: [
          IconButton(
            tooltip: 'Entrar',
            icon: Icon(Icons.lock_outlined),
            onPressed: () {
              // Definir ação
            },
          ),
        ],
      ),
      body: Column(
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
      ),
    );
  }
}
