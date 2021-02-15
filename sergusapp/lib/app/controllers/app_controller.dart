import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isLoginView = false;
  changeTheme() {
    isLoginView = !isLoginView;
    notifyListeners();
  }
}
