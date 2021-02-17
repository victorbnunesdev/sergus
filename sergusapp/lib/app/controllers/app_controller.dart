import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  PageController _pageController;

  AppController() {
    _pageController = PageController();
  }

  bool isLoginView = false;
  changePage() {
    isLoginView = !isLoginView;

    if (isLoginView)
      _pageController.animateToPage(_pageController.page.round() + 1,
          curve: Curves.decelerate, duration: Duration(seconds: 1));
    else
      _pageController.animateToPage(_pageController.page.round() - 1,
          curve: Curves.decelerate, duration: Duration(seconds: 1));

    notifyListeners();
  }

  PageController getPageController() {
    return _pageController;
  }
}
