import 'package:flutter/material.dart';
import 'package:shared/theme/extensions/color_theme_extension.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final CatColor catColor;
  AppColorTheme({required this.catColor});

  @override
  ThemeExtension<AppColorTheme> copyWith({
    CatColor? catColor,
  }) {
    return AppColorTheme(
      catColor: catColor ?? this.catColor,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this;
    return AppColorTheme(
      catColor: CatColor(
        catColor1: Color.lerp(catColor.catColor1, other.catColor.catColor1, t)!,
        catColor2: Color.lerp(catColor.catColor2, other.catColor.catColor2, t)!,
        catColor3: Color.lerp(catColor.catColor3, other.catColor.catColor3, t)!,
        catColor4: Color.lerp(catColor.catColor4, other.catColor.catColor4, t)!,
        catColor5: Color.lerp(catColor.catColor5, other.catColor.catColor5, t)!,
        catColor6: Color.lerp(catColor.catColor6, other.catColor.catColor6, t)!,
        catColor7: Color.lerp(catColor.catColor7, other.catColor.catColor7, t)!,
        catColor8: Color.lerp(catColor.catColor8, other.catColor.catColor8, t)!,
        catColor9: Color.lerp(catColor.catColor9, other.catColor.catColor9, t)!,
        catColor10: Color.lerp(catColor.catColor10, other.catColor.catColor10, t)!,
      ),
    );
  }
}
