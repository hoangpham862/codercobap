import 'package:flutter/material.dart';
import 'package:shared/theme/app_font_const.dart';

class AppThemeHelper {
  static TextStyle buildTextStyle({
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: AppFontConst.aeonik.value,
    );
  }
}
