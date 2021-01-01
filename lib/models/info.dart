import 'package:flutter/foundation.dart';

class Info with ChangeNotifier {
  String title;
  String description;
  String get getTitle => title;

  set setTitle(String title) {
    this.title = title;
    notifyListeners();
  }

  String get getDescription => description;

  set setDescription(String description) {
    this.description = description;
    notifyListeners();
  }

  Info({
    this.title = "Default title",
    this.description = "Default description",
  });
}
