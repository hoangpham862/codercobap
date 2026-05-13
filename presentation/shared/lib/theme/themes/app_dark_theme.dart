import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:shared/theme/app_font_const.dart';
import 'package:shared/theme/app_theme_id.dart';
import 'package:theme_provider/theme_provider.dart';

AppTheme get dark {
  ThemeData themeData = FlexThemeData.dark(
    scheme: FlexScheme.mandyRed,
    fontFamily: AppFontConst.aeonik.value,
    useMaterial3: true,
  );
  return AppTheme(
    id: AppThemeId.dark.value,
    data: themeData,
    description: AppThemeId.dark.value,
  );
}
