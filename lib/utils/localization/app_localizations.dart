import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_task/core/constant.dart';

class AppLocalizations {
  AppLocalizations(this.locale) ;

  final Locale locale;

  static final Map<String, Map<String, String>> _cacheLocalizedStrings =
  HashMap<String, Map<String, String>>();
  Map<String, String> _localizedStrings = <String, String>{};

  String currentLanguageCode = Constant.defaultLanguage;
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  Future<bool> load() async {
    currentLanguageCode = locale.languageCode.toLowerCase();
    // Caching Process to faster load the language file
    if (_cacheLocalizedStrings.containsKey(currentLanguageCode)) {
      _localizedStrings = _cacheLocalizedStrings[currentLanguageCode]!;
      return true;
    }
    final String jsonString = await rootBundle
        .loadString('assets/localization/$currentLanguageCode.json');
    final Map<String, dynamic> jsonMap =
    json.decode(jsonString) as Map<String, dynamic>;
    _localizedStrings = jsonMap.map((String key, dynamic value) =>
        MapEntry<String, String>(key, value.toString()));
    _cacheLocalizedStrings[currentLanguageCode] = _localizedStrings;
    return true;
  }

  String translate(String? key) {
    String? translate = _localizedStrings[key];
    //try to get with key in LowerCase
    translate ??= _localizedStrings[key?.toLowerCase()];
    //try to get with remove white space
    translate ??= _localizedStrings[key?.trim()];
    //try to get with remove white space and key in LowerCase
    translate ??= _localizedStrings[key?.trim().toLowerCase()];

    return translate ?? key ?? '';
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    await Future.delayed(const Duration(milliseconds: 200));
    final AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();

    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}