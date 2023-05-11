import 'package:flutter/material.dart';

class ConfigController with ChangeNotifier{

   String configpresset = '';

  void selectconfig(String config) {
    configpresset = config;
    notifyListeners();
  }

}