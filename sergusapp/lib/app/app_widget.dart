import 'package:flutter/material.dart';
import 'package:sergusapp/app/views/conheca_sergus/apresentacao_view.dart';
import 'package:sergusapp/app/views/conheca_sergus/conheca_sergus_view.dart';
import 'package:sergusapp/app/views/conheca_sergus/politica_privacidade_view.dart';
import 'package:sergusapp/app/views/conheca_sergus/sergus_educacao_view.dart';
import 'package:sergusapp/app/views/conheca_sergus/ultimas_noticias_view.dart';
import 'package:sergusapp/app/views/minha_conta_view.dart';
import 'package:sergusapp/app/views/welcome/welcome_view.dart';
import 'package:sergusapp/constants.dart';

import 'controllers/app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primaryColor: kPrimaryColor,
                  scaffoldBackgroundColor: Colors.white,
                  brightness: Brightness.light),
              initialRoute: '/',
              routes: {
                '/': (context) => WelcomeView(),
                '/minhaconta': (context) => MinhaContaView(),
                '/conhecasergus': (context) => ConhecaSergusView(),
                '/politicaprivacidade': (context) => PoliticaPrivacidadeView(),
                '/serguseducacao': (context) => SergusEducacaoView(),
                '/ultimasnoticias': (context) => UltimasNoticiasView(),
                '/apresentacao': (context) => ApresentacaoView(),
              });
        });
  }
}
