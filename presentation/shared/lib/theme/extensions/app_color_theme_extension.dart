import 'package:flutter/material.dart';
import 'package:shared/theme/extensions/color_theme_extension.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final PrimaryColor primaryColor;
  final SecondaryColor secondaryColor;
  final NeutralColor neutralColor;
  final TertiaryColor tertiaryColor;

  final Color activeSwitcherColor;

  AppColorTheme({
    required this.primaryColor,
    required this.secondaryColor,
    required this.neutralColor,
    required this.tertiaryColor,
    required this.activeSwitcherColor,
  });

  @override
  ThemeExtension<AppColorTheme> copyWith({
    PrimaryColor? primaryColor,
    SecondaryColor? secondaryColor,
    NeutralColor? neutralColor,
    TertiaryColor? tertiaryColor,
    Color? activeSwitcherColor,
  }) {
    return AppColorTheme(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      neutralColor: neutralColor ?? this.neutralColor,
      tertiaryColor: tertiaryColor ?? this.tertiaryColor,
      activeSwitcherColor: activeSwitcherColor ?? this.activeSwitcherColor,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
      ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this;
    return AppColorTheme(
      activeSwitcherColor:
          Color.lerp(activeSwitcherColor, other.activeSwitcherColor, t)!,
      primaryColor: PrimaryColor(
        primaryColor1: Color.lerp(
            primaryColor.primaryColor1, other.primaryColor.primaryColor1, t)!,
        primaryColor2: Color.lerp(
            primaryColor.primaryColor2, other.primaryColor.primaryColor2, t)!,
        primaryColor3: Color.lerp(
            primaryColor.primaryColor3, other.primaryColor.primaryColor3, t)!,
        primaryColor4: Color.lerp(
            primaryColor.primaryColor4, other.primaryColor.primaryColor4, t)!,
        primaryColor5: Color.lerp(
            primaryColor.primaryColor5, other.primaryColor.primaryColor5, t)!,
        primaryColor6: Color.lerp(
            primaryColor.primaryColor6, other.primaryColor.primaryColor6, t)!,
        primaryColor7: Color.lerp(
            primaryColor.primaryColor7, other.primaryColor.primaryColor7, t)!,
        primaryColor8: Color.lerp(
            primaryColor.primaryColor8, other.primaryColor.primaryColor8, t)!,
        primaryColor9: Color.lerp(
            primaryColor.primaryColor9, other.primaryColor.primaryColor9, t)!,
      ),
      secondaryColor: SecondaryColor(
        secondaryColor1: Color.lerp(secondaryColor.secondaryColor1,
            other.secondaryColor.secondaryColor1, t)!,
        secondaryColor2: Color.lerp(secondaryColor.secondaryColor2,
            other.secondaryColor.secondaryColor2, t)!,
        secondaryColor3: Color.lerp(secondaryColor.secondaryColor3,
            other.secondaryColor.secondaryColor3, t)!,
        secondaryColor4: Color.lerp(secondaryColor.secondaryColor4,
            other.secondaryColor.secondaryColor4, t)!,
        secondaryColor5: Color.lerp(secondaryColor.secondaryColor5,
            other.secondaryColor.secondaryColor5, t)!,
        secondaryColor6: Color.lerp(secondaryColor.secondaryColor6,
            other.secondaryColor.secondaryColor6, t)!,
        secondaryColor7: Color.lerp(secondaryColor.secondaryColor7,
            other.secondaryColor.secondaryColor7, t)!,
        secondaryColor8: Color.lerp(secondaryColor.secondaryColor8,
            other.secondaryColor.secondaryColor8, t)!,
        secondaryColor9: Color.lerp(secondaryColor.secondaryColor9,
            other.secondaryColor.secondaryColor9, t)!,
      ),
      neutralColor: NeutralColor(
        neutralColor1: Color.lerp(
            neutralColor.neutralColor1, other.neutralColor.neutralColor1, t)!,
        neutralColor2: Color.lerp(
            neutralColor.neutralColor2, other.neutralColor.neutralColor2, t)!,
        neutralColor3: Color.lerp(
            neutralColor.neutralColor3, other.neutralColor.neutralColor3, t)!,
        neutralColor4: Color.lerp(
            neutralColor.neutralColor4, other.neutralColor.neutralColor4, t)!,
        neutralColor5: Color.lerp(
            neutralColor.neutralColor5, other.neutralColor.neutralColor5, t)!,
        neutralColor6: Color.lerp(
            neutralColor.neutralColor6, other.neutralColor.neutralColor6, t)!,
        neutralColor7: Color.lerp(
            neutralColor.neutralColor7, other.neutralColor.neutralColor7, t)!,
        neutralColor8: Color.lerp(
            neutralColor.neutralColor8, other.neutralColor.neutralColor8, t)!,
        neutralColor9: Color.lerp(
            neutralColor.neutralColor9, other.neutralColor.neutralColor9, t)!,
      ),
      tertiaryColor: TertiaryColor(
        tertiaryColor1: Color.lerp(tertiaryColor.tertiaryColor1,
            other.tertiaryColor.tertiaryColor1, t)!,
        tertiaryColor2: Color.lerp(tertiaryColor.tertiaryColor2,
            other.tertiaryColor.tertiaryColor2, t)!,
        tertiaryColor3: Color.lerp(tertiaryColor.tertiaryColor3,
            other.tertiaryColor.tertiaryColor3, t)!,
        tertiaryColor4: Color.lerp(tertiaryColor.tertiaryColor4,
            other.tertiaryColor.tertiaryColor4, t)!,
        tertiaryColor5: Color.lerp(tertiaryColor.tertiaryColor5,
            other.tertiaryColor.tertiaryColor5, t)!,
        tertiaryColor6: Color.lerp(tertiaryColor.tertiaryColor6,
            other.tertiaryColor.tertiaryColor6, t)!,
        tertiaryColor7: Color.lerp(tertiaryColor.tertiaryColor7,
            other.tertiaryColor.tertiaryColor7, t)!,
        tertiaryColor8: Color.lerp(tertiaryColor.tertiaryColor8,
            other.tertiaryColor.tertiaryColor8, t)!,
        tertiaryColor9: Color.lerp(tertiaryColor.tertiaryColor9,
            other.tertiaryColor.tertiaryColor9, t)!,
      ),
    );
  }
}
