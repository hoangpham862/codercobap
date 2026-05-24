import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:shared/theme/app_font_const.dart';

AppTheme get light {
  ThemeData themeData = FlexThemeData.light(
    scheme: FlexScheme.mandyRed,
    fontFamily: AppFontConst.aeonik.value,
    useMaterial3: true,
    extensions: [
      AppColorTheme(
          primaryColor:
              PrimaryColorData.getPrimaryColor(AppThemeId.light.value),
          secondaryColor:
              SecondaryColorData.getSecondaryColor(AppThemeId.light.value),
          neutralColor:
              NeutralColorData.getNeutralColor(AppThemeId.light.value),
          tertiaryColor:
              TertiaryColorData.getTertiaryColor(AppThemeId.light.value)),
    ],
  );
  return AppTheme(
    id: AppThemeId.light.value,
    data: themeData,
    description: AppThemeId.light.value,
  );
}
