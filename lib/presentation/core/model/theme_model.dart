import 'package:flutter/widgets.dart';

class ThemeModel {
  bool isLight;
  Color? primaryColor;
  Color? secondaryColor;
  Color? variantColor;
  Color? accentColor;
  Color? backgroundColor;
  Color? onPrimaryColor;
  Color? onSecondaryColor;
  Color? onVariantColor;
  Color? onAccentColor;
  Color? onBackgroundColor;
  double tinyPadding = 14;
  double smallPadding = 18;
  double mediumPadding = 24;
  double bigPadding = 26;
  double largePadding = 28;
  double hugePadding = 30;
  double tinyFont = 10;
  double smallFont = 12;
  double mediumFont = 14;
  double bigFont = 16;
  double largeFont = 24;
  double hugeFont = 26;

  ThemeModel(
    this.isLight, {
    this.primaryColor,
    this.secondaryColor,
    this.variantColor,
    this.accentColor,
    this.backgroundColor,
    this.onPrimaryColor,
    this.onSecondaryColor,
    this.onVariantColor,
    this.onAccentColor,
    this.onBackgroundColor,
    this.tinyPadding = 14,
    this.smallPadding = 18,
    this.mediumPadding = 24,
    this.bigPadding = 26,
    this.largePadding = 28,
    this.hugePadding = 30,
    this.tinyFont = 10,
    this.smallFont = 12,
    this.mediumFont = 14,
    this.bigFont = 16,
    this.largeFont = 24,
    this.hugeFont = 26,
  });
}
