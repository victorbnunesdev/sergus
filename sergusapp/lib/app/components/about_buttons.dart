import 'package:flutter/material.dart';
import 'package:sergusapp/app/views/about_view.dart';
import 'package:sergusapp/constants.dart';

class AboutButtons extends StatelessWidget {
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
            builder: (context) => AboutView(section: Section.latest_news),
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
            builder: (context) => AboutView(section: Section.sergus_education),
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
            builder: (context) => AboutView(section: Section.privacy_policy),
          ),
        );
      },
      tooltip: 'Política de Privacidade',
      child: Icon(Icons.privacy_tip_rounded),
    ),
  );
}
