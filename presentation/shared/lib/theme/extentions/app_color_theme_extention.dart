import 'package:flutter/material.dart';
import 'package:shared/theme/extentions/color_theme_extention.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final ColorThemeExtention colorThemeExtention;
  AppColorTheme({required this.colorThemeExtention});

  @override
  ThemeExtension<AppColorTheme> copyWith({
    ColorThemeExtention? colorThemeExtention,
  }) {
    return AppColorTheme(
      colorThemeExtention: colorThemeExtention ?? this.colorThemeExtention,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this;
    return AppColorTheme(
      colorThemeExtention: ColorThemeExtention(
        colorThemeExtention1:
            Color.lerp(colorThemeExtention.colorThemeExtention1, other.colorThemeExtention.colorThemeExtention1, t)!,
        colorThemeExtention2:
            Color.lerp(colorThemeExtention.colorThemeExtention2, other.colorThemeExtention.colorThemeExtention2, t)!,
        colorThemeExtention3:
            Color.lerp(colorThemeExtention.colorThemeExtention3, other.colorThemeExtention.colorThemeExtention3, t)!,
        colorThemeExtention4:
            Color.lerp(colorThemeExtention.colorThemeExtention4, other.colorThemeExtention.colorThemeExtention4, t)!,
        colorThemeExtention5:
            Color.lerp(colorThemeExtention.colorThemeExtention5, other.colorThemeExtention.colorThemeExtention5, t)!,
        colorThemeExtention6:
            Color.lerp(colorThemeExtention.colorThemeExtention6, other.colorThemeExtention.colorThemeExtention6, t)!,
        colorThemeExtention7:
            Color.lerp(colorThemeExtention.colorThemeExtention7, other.colorThemeExtention.colorThemeExtention7, t)!,
        colorThemeExtention8:
            Color.lerp(colorThemeExtention.colorThemeExtention8, other.colorThemeExtention.colorThemeExtention8, t)!,
        colorThemeExtention9:
            Color.lerp(colorThemeExtention.colorThemeExtention9, other.colorThemeExtention.colorThemeExtention9, t)!,
        colorThemeExtention10:
            Color.lerp(colorThemeExtention.colorThemeExtention10, other.colorThemeExtention.colorThemeExtention10, t)!,
      ),
    );
  }
}
