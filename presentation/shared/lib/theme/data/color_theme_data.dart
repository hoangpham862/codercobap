import 'dart:ui';

import 'package:shared/theme/app_theme_id.dart';
import 'package:shared/theme/extentions/color_theme_extention.dart';

class ColorThemeData {
  static ColorThemeExtention getColorTheme(String themeId) {
    return switch (AppThemeId(themeId)) {
      AppThemeId.light => ColorThemeExtention(
          colorThemeExtention1: const Color(0xffF8F9FA),
          colorThemeExtention2: const Color(0xffEBEDEF),
          colorThemeExtention3: const Color(0xffEDEEF1),
          colorThemeExtention4: const Color(0xffCCD4D3),
          colorThemeExtention5: const Color(0xffB4BCC6),
          colorThemeExtention6: const Color(0xff778190),
          colorThemeExtention7: const Color(0xff525252),
          colorThemeExtention8: const Color(0xff181A23),
          colorThemeExtention9: const Color(0xff000000),
          colorThemeExtention10: const Color(0xff000000)),
      AppThemeId.dark => ColorThemeExtention(
          colorThemeExtention1: const Color(0xff1F2630),
          colorThemeExtention2: const Color(0xff28303C),
          colorThemeExtention3: const Color(0xff323C49),
          colorThemeExtention4: const Color(0xff111720),
          colorThemeExtention5: const Color(0xff6F737E),
          colorThemeExtention6: const Color(0xff828893),
          colorThemeExtention7: const Color(0xffC9CFDA),
          colorThemeExtention8: const Color(0xffEFF2F7),
          colorThemeExtention9: const Color(0xffFFFFFF),
          colorThemeExtention10: const Color(0xffFFFFFF)),
      _ => ColorThemeExtention(
          colorThemeExtention1: const Color(0xffF8F9FA),
          colorThemeExtention2: const Color(0xffEBEDEF),
          colorThemeExtention3: const Color(0xffEDEEF1),
          colorThemeExtention4: const Color(0xffCCD4D3),
          colorThemeExtention5: const Color(0xffB4BCC6),
          colorThemeExtention6: const Color(0xff778190),
          colorThemeExtention7: const Color(0xff525252),
          colorThemeExtention8: const Color(0xff181A23),
          colorThemeExtention9: const Color(0xff000000),
          colorThemeExtention10: const Color(0xff000000)),
    };
  }
}
