import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:shared/theme/app_font_const.dart';
import 'package:shared/theme/app_theme_id.dart';

import 'package:shared/theme/extensions/app_text_style_theme.dart';
import 'package:theme_provider/theme_provider.dart';

import '../data/theme_data.dart';
import '../extensions/app_color_theme_extension.dart';

AppTheme get dark {
  ThemeData themeData = FlexThemeData.dark(
    scheme: FlexScheme.mandyRed,
    fontFamily: AppFontConst.aeonik.value,
    useMaterial3: true,
    primary: const Color(0xffCBD5E1),
    secondary: const Color(0xff64748B),
    tertiary: const Color(0xff94A3B8),
    extensions: [
      AppColorTheme(
        primaryColor: PrimaryColorData.getPrimaryColor(AppThemeId.dark.value),
        secondaryColor:
            SecondaryColorData.getSecondaryColor(AppThemeId.dark.value),
        neutralColor: NeutralColorData.getNeutralColor(AppThemeId.dark.value),
        tertiaryColor:
            TertiaryColorData.getTertiaryColor(AppThemeId.dark.value),
      ),
      const AppTextStyleTheme(
        neu6Medi24: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    ],
  );
  return AppTheme(
    id: AppThemeId.dark.value,
    data: themeData,
    description: AppThemeId.dark.value,
  );
}
