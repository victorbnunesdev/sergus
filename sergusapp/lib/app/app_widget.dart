import 'package:flutter/material.dart';
import 'package:sergusapp/app/views/sobre_view.dart';
import 'package:sergusapp/app/views/start_view.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.green, brightness: Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/sobre': (context) => SobreView()
            },
          );
        });
  }
}
