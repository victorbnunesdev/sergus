import 'package:flutter/material.dart';
import 'package:sergusapp/app/views/sobre_view.dart';
import 'package:sergusapp/app/views/welcome_view.dart';
import 'package:sergusapp/constants.dart';

import 'controllers/app_controller.dart';
import 'home_page.dart';
import 'views/about_view.dart';

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
              '/home': (context) => HomePage(),
              '/sobre': (context) => SobreView(),
              '/about': (context) => AboutView(),
            },
          );
        });
  }
}
