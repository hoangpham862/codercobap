import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:shared/theme/app_font_const.dart';
import 'package:shared/theme/app_theme_id.dart';

import 'package:shared/theme/extensions/app_text_style_theme.dart';
import 'package:shared/theme/extensions/extensions.dart';
import 'package:theme_provider/theme_provider.dart';

import '../data/theme_data.dart';
import '../extensions/app_color_theme_extension.dart';

AppTheme get dark {
  NeutralColor neutralColor =
      NeutralColorData.getNeutralColor(AppThemeId.dark.value);
  PrimaryColor primaryColor =
      PrimaryColorData.getPrimaryColor(AppThemeId.dark.value);
  SecondaryColor secondaryColor =
      SecondaryColorData.getSecondaryColor(AppThemeId.dark.value);
  TertiaryColor tertiaryColor =
      TertiaryColorData.getTertiaryColor(AppThemeId.dark.value);
  ThemeData themeData = FlexThemeData.dark(
    scheme: FlexScheme.mandyRed,
    fontFamily: AppFontConst.aeonik.value,
    useMaterial3: true,
    primary: const Color(0xffCBD5E1),
    secondary: const Color(0xff64748B),
    tertiary: const Color(0xff94A3B8),
    extensions: [
      AppColorTheme(
        activeSwitcherColor: const Color(0xffB7C8E1),
        primaryColor: primaryColor,
        secondaryColor: secondaryColor,
        neutralColor: neutralColor,
        tertiaryColor: tertiaryColor,
      ),
      AppTextStyleTheme(
        // neu1 Medium
        neu1Medi10: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        neu1Medi11: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        neu1Medi12: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        neu1Medi14: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        neu1Medi16: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        neu1Medi18: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        neu1Medi20: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        neu1Medi24: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor1),
        // neu1 Regular
        neu1Regu10: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        neu1Regu11: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        neu1Regu12: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        neu1Regu14: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        neu1Regu16: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        neu1Regu18: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        neu1Regu20: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        neu1Regu24: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor1),
        // neu1 Bold
        neu1Bold10: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        neu1Bold11: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        neu1Bold12: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        neu1Bold14: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        neu1Bold16: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        neu1Bold18: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        neu1Bold20: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        neu1Bold24: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: neutralColor.neutralColor1),
        // neu2 Medium
        neu2Medi10: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        neu2Medi11: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        neu2Medi12: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        neu2Medi14: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        neu2Medi16: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        neu2Medi18: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        neu2Medi20: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        neu2Medi24: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: neutralColor.neutralColor2),
        // neu2 Regular
        neu2Regu10: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
        neu2Regu11: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
        neu2Regu12: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
        neu2Regu14: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
        neu2Regu16: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
        neu2Regu18: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
        neu2Regu20: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
        neu2Regu24: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: neutralColor.neutralColor2),
      ),
    ],
  );
  return AppTheme(
    id: AppThemeId.dark.value,
    data: themeData,
    description: AppThemeId.dark.value,
  );
}
