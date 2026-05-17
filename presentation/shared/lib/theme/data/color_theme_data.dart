import 'dart:ui';

import 'package:shared/theme/app_theme_id.dart';
import 'package:shared/theme/extensions/color_theme_extension.dart';

class ColorThemeData {
  static CatColor getColorTheme(String themeId) {
    return switch (AppThemeId(themeId)) {
      AppThemeId.light => CatColor(
          catColor1: const Color(0xffF8F9FA),
          catColor2: const Color(0xffEBEDEF),
          catColor3: const Color(0xffEDEEF1),
          catColor4: const Color(0xffCCD4D3),
          catColor5: const Color(0xffB4BCC6),
          catColor6: const Color(0xff778190),
          catColor7: const Color(0xff525252),
          catColor8: const Color(0xff181A23),
          catColor9: const Color(0xff000000),
          catColor10: const Color(0xff000000)),
      AppThemeId.dark => CatColor(
          catColor1: const Color(0xff1F2630),
          catColor2: const Color(0xff28303C),
          catColor3: const Color(0xff323C49),
          catColor4: const Color(0xff111720),
          catColor5: const Color(0xff6F737E),
          catColor6: const Color(0xff828893),
          catColor7: const Color(0xffC9CFDA),
          catColor8: const Color(0xffEFF2F7),
          catColor9: const Color(0xffFFFFFF),
          catColor10: const Color(0xffFFFFFF)),
      _ => CatColor(
          catColor1: const Color(0xffF8F9FA),
          catColor2: const Color(0xffEBEDEF),
          catColor3: const Color(0xffEDEEF1),
          catColor4: const Color(0xffCCD4D3),
          catColor5: const Color(0xffB4BCC6),
          catColor6: const Color(0xff778190),
          catColor7: const Color(0xff525252),
          catColor8: const Color(0xff181A23),
          catColor9: const Color(0xff000000),
          catColor10: const Color(0xff000000)),
    };
  }
}
