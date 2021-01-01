import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  String _unit;
  List<String> _waxLines;

  SettingsProvider() {
    this._unit = "Imperial";
    this._waxLines = ["Swix", "Toko"];
  }

  //getters
  String get unit => _unit;
  List get waxLines => _waxLines;

  //setters
  set unit(String value) {
    _unit = value;
    notifyListeners();
  }

  set waxLines(List value) {
    _waxLines = value;
    notifyListeners();
  }

  void addWaxLine(String waxLine) {
    if (!waxLines.contains(waxLine)) {
      waxLines.add(waxLine);
      notifyListeners();
    }
  }

  void deleteWaxLine(String waxLine) {
    if (waxLines.contains(waxLine)) {
      waxLines.remove(waxLine);
      notifyListeners();
    }
  }

  bool doContain(String value) => waxLines.contains(value);
}
