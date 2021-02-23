import 'package:flutter/material.dart';
import 'package:sergusapp/constants.dart';

class ConhecaSergusView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarToolbarHeight,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Conheça a Sergus',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _carregarSessaoConhecaSergus(context),
          SizedBox(
            height: 40,
          ),
          Text(
            'Informações e Serviços',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _carregarSessaoInformacoesServicos(context),
        ]),
      ),
    );
  }
}

_carregarSessaoConhecaSergus(BuildContext context) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {
                  Navigator.of(context).pushNamed('/apresentacao');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.present_to_all,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Apresentação',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Cartilha do Participante',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {
                  Navigator.of(context).pushNamed('/serguseducacao');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Sergus Educação',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {
                  Navigator.of(context).pushNamed('/politicaprivacidade');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Política de Privacidade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.rule_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Regulamento',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
            ),
          ),
        ],
      ),
    ],
  );
}

_carregarSessaoInformacoesServicos(BuildContext context) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calculate_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Simulador',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.speaker_notes_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Comunicados',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_phone_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Contatos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
              child: FlatButton(
                color: kSecondColor,
                onPressed: () {
                  Navigator.of(context).pushNamed('/ultimasnoticias');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.article_outlined,
                      color: kPrimaryColor,
                    ),
                    Text(
                      'Últimas Notícias',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 120,
            ),
          ),
        ],
      ),
    ],
  );
}
