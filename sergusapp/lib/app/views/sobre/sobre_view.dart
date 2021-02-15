import 'package:flutter/material.dart';
import 'package:sergusapp/app/views/sobre/inicio_partial_view.dart';
import 'package:sergusapp/app/views/sobre/politica_privacidade_partial_view.dart';
import 'package:sergusapp/app/views/sobre/sergus_educacao_partial_view.dart';
import 'package:sergusapp/app/views/sobre/sobre_botoes_partial_view.dart';
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
      body: SingleChildScrollView(
        child: preencherSessaoInterna(sobrePartialViews),
      ),
      floatingActionButton: SobreBotoesPartialView(),
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
