import 'package:flutter/material.dart';
import 'package:user_task/core/constant.dart';

import 'app_font_family.dart';

class CustomTextTheme extends TextTheme {
  @override
  TextStyle get displayLarge => const TextStyle(
        fontSize: 30,
        fontFamily: AppFontFamily.bold,
      );

  @override
  TextStyle get displayMedium => const TextStyle(
        fontSize: 25,
        fontFamily: AppFontFamily.light,
        color: Constant.darkGreenColor,
      );

  @override
  TextStyle get headlineMedium => const TextStyle(
        fontSize: 15,
        fontFamily: AppFontFamily.bold,
      );

  @override
  TextStyle get bodyMedium => const TextStyle(
        fontSize: 13,
        fontFamily: AppFontFamily.regular,
      );
}
