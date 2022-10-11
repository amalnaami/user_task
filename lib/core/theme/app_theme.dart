import 'package:flutter/material.dart';
import 'package:user_task/core/constant.dart';

import 'app_text_theme/text_theme.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Constant.backgroundLight,
  primaryColor: Constant.darkGreenColor,
  textTheme: CustomTextTheme(),
  appBarTheme: const AppBarTheme(backgroundColor: Constant.defaultColor),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Constant.darkGreenColor,
  ),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Constant.backgroundDark,
  primaryColor: Constant.darkGreenColor,
  textTheme: CustomTextTheme(),
  appBarTheme: const AppBarTheme(backgroundColor: Constant.darkGreenColor),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Constant.darkGreenColor,
  ),
);
