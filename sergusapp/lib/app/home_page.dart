import 'package:flutter/material.dart';

import 'controllers/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Center(
            child: Text('Sergus v1.0'),
          ),
        ),
        actions: [CustomSwitch()],
      ),
      body: Center(child: CustomSwitch()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isLoginView,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
