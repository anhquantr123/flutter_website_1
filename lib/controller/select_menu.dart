import 'package:flutter/cupertino.dart';

class SelectMenu extends ChangeNotifier {
  int _selectMenu = 0;

  int get currentMenu => _selectMenu;

  void changeMenu(int menu) {
    _selectMenu = menu;
    notifyListeners();
  }
}
