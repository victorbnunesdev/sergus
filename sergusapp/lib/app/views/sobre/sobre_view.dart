import 'package:flutter/material.dart';
import 'package:sergusapp/app/controllers/sobre_controller.dart';
import 'package:sergusapp/app/views/sobre/inicio_partial_view.dart';
import 'package:sergusapp/app/views/sobre/politica_privacidade_partial_view.dart';
import 'package:sergusapp/app/views/sobre/sergus_educacao_partial_view.dart';
import 'package:sergusapp/app/views/sobre/ultimas_noticias_partial_view.dart';
import 'package:sergusapp/constants.dart';

class SobreView extends StatefulWidget {
  @override
  _SobreViewState createState() => _SobreViewState();
}

class _SobreViewState extends State<SobreView> {
  final controller = SobreController();

  carregarConteudo(ConteudoSobreState conteudo) {
    switch (conteudo) {
      case ConteudoSobreState.ultimas_noticias:
        return UltimasNoticiasPartialView();
      case ConteudoSobreState.politica_de_privacidade:
        return PoliticaPrivacidadePartialView();
      case ConteudoSobreState.sergus_educacao:
        return SergusEducacaoPartialView();
      case ConteudoSobreState.inicio:
      default:
        return InicioPartialView();
    }
  }

  @override
  void initState() {
    super.initState();
    controller.carregarConteudo(ConteudoSobreState.inicio);
  }

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
              child: AnimatedBuilder(
                animation: controller.conteudo,
                builder: (BuildContext context, Widget child) {
                  return carregarConteudo(controller.conteudo.value);
                },
              ),
            ),
          ),
          carregarRodape(context, controller),
        ],
      ),
    );
  }
}

carregarRodape(BuildContext context, SobreController controller) {
  return Row(
    children: [
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 100,
          child: FlatButton(
            color: kPrimaryColor,
            onPressed: () {
              controller.carregarConteudo(ConteudoSobreState.ultimas_noticias);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.article_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Últimas Notícias',
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
              controller.carregarConteudo(ConteudoSobreState.sergus_educacao);
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
              controller
                  .carregarConteudo(ConteudoSobreState.politica_de_privacidade);
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
