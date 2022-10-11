import 'package:flutter/material.dart';

class Constant {
  static const Color defaultColor = Color(0XFF22CABA);
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color backgroundDark = Colors.black;

  static const Color darkGreenColor = Color(0XFF336274);
  static const Color lightGreenColor = Color(0XFFE9FAF8);

  static const Color paleWhite = Color(0XFFF2F3F2);

  static MaterialColor primarySwatch = Colors.blue;

  static const alert = Color(0XFFFEDF00);

  static const valid = Color(0XFF22D896);

  static const String mainUrlApiService =
      'https://my-json-server.typicode.com/SharminSirajudeen/test_resources';

  static get users => "$mainUrlApiService/users";

  static get posts => "$mainUrlApiService/posts";

  static String defaultLanguage = "en";

  static get defaultLanguageNum => 0;
}

enum ApiStatus { success, error, noInternet }
