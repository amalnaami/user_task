class AppFontFamily {
  AppFontFamily? _family;

  AppFontFamily? getInstance() {
    return _family ?? AppFontFamily();
  }

  static const String bold = "Manrope-Bold";
  static const String light = "Manrope-Light";
  static const String regular = "Manrope-Regular";
}
