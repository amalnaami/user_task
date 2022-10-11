import 'package:flutter/material.dart';
import 'package:user_task/core/constant.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLanguage = 'en';

  Future<void> setLanguage(String value) async {
    currentLanguage = value;
    Constant.defaultLanguage = value;
    notifyListeners();
  }
}
