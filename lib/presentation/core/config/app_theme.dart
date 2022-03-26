import 'package:flutter/material.dart';
import 'package:moslem/presentation/core/model/theme_model.dart';

class AppTheme {
  static final ThemeModel light = ThemeModel(
    true,
    primaryColor: const Color(0xff1687A7),
    onPrimaryColor: const Color(0xffF6F5F5),
    accentColor: const Color(0xffD3E0EA),
    onAccentColor: const Color(0xff276678),
    backgroundColor: const Color(0xffF6F5F5),
    onBackgroundColor: const Color(0xff276678),
  );

  static final ThemeModel dark = ThemeModel(
    false,
    primaryColor: const Color(0xff00ADB5),
    onPrimaryColor: const Color(0xffEEEEEE),
    accentColor: const Color(0xff393E46),
    onAccentColor: const Color(0xffEEEEEE),
    backgroundColor: const Color(0xff222831),
    onBackgroundColor: const Color(0xffEEEEEE),
  );
}

// static final ThemeModel light = ThemeModel(
//     true,
//     primaryColor: const Color(0xff3F72AF),
//     onPrimaryColor: const Color(0xffF9F7F7),
//     accentColor: const Color(0xffDBE2EF),
//     onAccentColor: const Color(0xff112D4E),
//     backgroundColor: const Color(0xffF9F7F7),
//     onBackgroundColor: const Color(0xff112D4E),
//   );