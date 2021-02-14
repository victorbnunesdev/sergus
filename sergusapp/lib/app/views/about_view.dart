import 'package:flutter/material.dart';
import 'package:sergusapp/app/components/about_buttons.dart';
import 'package:sergusapp/app/components/about_init_section.dart';
import 'package:sergusapp/app/components/latest_news_section.dart';
import 'package:sergusapp/app/components/privacy_policy_section.dart';
import 'package:sergusapp/app/components/sergus_education_section.dart';
import 'package:sergusapp/constants.dart';

class AboutView extends StatelessWidget {
  final Section section;

  const AboutView({Key key, @required this.section}) : super(key: key);

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
      body: preencherSessaoInterna(section),
      floatingActionButton: AboutButtons(),
    );
  }
}

enum Section { init, privacy_policy, sergus_education, latest_news }

preencherSessaoInterna(Section section) {
  switch (section) {
    case Section.latest_news:
      return LatestNewsSection();
    case Section.privacy_policy:
      return PrivacyPolicySection();
    case Section.sergus_education:
      return SergusEducationSection();
    case Section.init:
    default:
      return AboutInitSection();
  }
}
