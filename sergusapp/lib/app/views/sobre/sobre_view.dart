import 'package:flutter/material.dart';
import 'package:sergusapp/app/views/sobre/inicio_partial_view.dart';
import 'package:sergusapp/app/views/sobre/politica_privacidade_partial_view.dart';
import 'package:sergusapp/app/views/sobre/sergus_educacao_partial_view.dart';
import 'package:sergusapp/app/views/sobre/ultimas_noticias_partial_view.dart';
import 'package:sergusapp/constants.dart';

class SobreView extends StatelessWidget {
  final SobrePartialViews sobrePartialViews;

  const SobreView({Key key, @required this.sobrePartialViews})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarToolbarHeight,
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
          Expanded(
            child: SingleChildScrollView(
              child: preencherSessaoInterna(sobrePartialViews),
            ),
          ),
          preencherRodape(context),
        ],
      ),
      //floatingActionButton: SobreBotoesPartialView(),
    );
  }
}

enum SobrePartialViews {
  inicio,
  politica_de_privacidade,
  sergus_educacao,
  ultimas_noticias
}

preencherSessaoInterna(SobrePartialViews sobrePartialViews) {
  switch (sobrePartialViews) {
    case SobrePartialViews.ultimas_noticias:
      return UltimasNoticiasPartialView();
    case SobrePartialViews.politica_de_privacidade:
      return PoliticaPrivacidadePartialView();
    case SobrePartialViews.sergus_educacao:
      return SergusEducacaoPartialView();
    case SobrePartialViews.inicio:
    default:
      return InicioPartialView();
  }
}

preencherRodape(BuildContext context) {
  return Row(
    children: [
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 100,
          child: FlatButton(
            color: kPrimaryColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SobreView(
                      sobrePartialViews: SobrePartialViews.ultimas_noticias),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.new_releases_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Últimas Notícias',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
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
          height: 100,
          child: FlatButton(
            color: kPrimaryColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SobreView(
                      sobrePartialViews: SobrePartialViews.sergus_educacao),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.school_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Sergus Educação',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 100,
          child: FlatButton(
            color: kPrimaryColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SobreView(
                      sobrePartialViews:
                          SobrePartialViews.politica_de_privacidade),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Política de Privacidade',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
