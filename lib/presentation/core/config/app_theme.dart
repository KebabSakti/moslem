import 'package:flutter/material.dart';
import 'package:moslem/presentation/core/model/theme_model.dart';

class AppTheme {
  static final ThemeModel light = ThemeModel(
    true,
    primaryColor: const Color(0xff16C172),
    onPrimaryColor: const Color(0xffFBFFFE),
    secondaryColor: const Color(0xff3AAED8),
    onSecondaryColor: const Color(0xffFBFFFE),
    variantColor: const Color(0xff12263A),
    onVariantColor: const Color(0xffFBFFFE),
    accentColor: const Color(0xffF6EAA2),
    onAccentColor: const Color(0xff272932),
    backgroundColor: const Color(0xffFBFFFE),
    onBackgroundColor: const Color(0xff272932),
  );

  static final ThemeModel dark = ThemeModel(
    false,
    primaryColor: const Color(0xff5986FF),
    onPrimaryColor: const Color(0xffFBFFFE),
    secondaryColor: const Color(0xff3A8DD8),
    onSecondaryColor: const Color(0xffFBFFFE),
    variantColor: const Color(0xff12203A),
    onVariantColor: const Color(0xffFBFFFE),
    accentColor: const Color(0xffDED5BA),
    onAccentColor: const Color(0xff272932),
    backgroundColor: const Color(0xff272932),
    onBackgroundColor: const Color(0xffFBFFFE),
  );
}
