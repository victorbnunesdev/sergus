import 'package:flutter/material.dart';
import 'package:sergusapp/app/views/sobre/sobre_view.dart';
import 'package:sergusapp/constants.dart';

class SobreBotoesPartialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ultimasNoticias(context),
        SizedBox(height: 10),
        sergusEducacao(context),
        SizedBox(height: 10),
        politicaDePrivacidade(context),
      ],
    );
  }
}

Widget ultimasNoticias(BuildContext context) {
  return new Container(
    child: FloatingActionButton(
      heroTag: null,
      backgroundColor: kPrimaryColor,
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SobreView(
                sobrePartialViews: SobrePartialViews.ultimas_noticias),
          ),
        );
      },
      tooltip: 'Últimas Notícias',
      child: Icon(Icons.new_releases_rounded),
    ),
  );
}

Widget sergusEducacao(BuildContext context) {
  return new Container(
    child: FloatingActionButton(
      heroTag: null,
      backgroundColor: kPrimaryColor,
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                SobreView(sobrePartialViews: SobrePartialViews.sergus_educacao),
          ),
        );
      },
      tooltip: 'Sergus Educação',
      child: Icon(Icons.school_rounded),
    ),
  );
}

Widget politicaDePrivacidade(BuildContext context) {
  return new Container(
    child: FloatingActionButton(
      heroTag: null,
      backgroundColor: kPrimaryColor,
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SobreView(
                sobrePartialViews: SobrePartialViews.politica_de_privacidade),
          ),
        );
      },
      tooltip: 'Política de Privacidade',
      child: Icon(Icons.privacy_tip_rounded),
    ),
  );
}
