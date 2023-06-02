import 'package:flutter/material.dart';

import '../components/option/listoption.dart';

class OptionController extends ChangeNotifier {
  List<ListOption> options = [];

  OptionController({
    required this.options,
  });

  void addOption(ListOption option) {
    options.add(option);
    notifyListeners();
  }

  void removeOption(ListOption option) {
    options.remove(option);
    notifyListeners();
  }
}
