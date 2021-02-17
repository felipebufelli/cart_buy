import 'package:flutter/widgets.dart';

class BasePageModel extends ChangeNotifier {
  BasePageModel(this.controller);
  final PageController controller;

  int currentPage = 0;

  void setPage(int page) {
    currentPage = page;
    controller.jumpToPage(page);
    notifyListeners();
  }
}
