import 'dart:ui';

import 'package:shared/theme/app_theme_manager.dart';

class TertiaryColorData {
  static TertiaryColor getTertiaryColor(String themeId) {
    return switch (AppThemeId(themeId)) {
      AppThemeId.light => TertiaryColor(
          tertiaryColor1: const Color(0xff161D1C),
          tertiaryColor2: const Color(0xff2B3231),
          tertiaryColor3: const Color(0xff414847),
          tertiaryColor4: const Color(0xff59605E),
          tertiaryColor5: const Color(0xff59605E),
          tertiaryColor6: const Color(0xff8B9291),
          tertiaryColor7: const Color(0xffA5ADAB),
          tertiaryColor8: const Color(0xffC1C8C6),
          tertiaryColor9: const Color(0xffDDE4E2),
        ),
      AppThemeId.dark => TertiaryColor(
          tertiaryColor1: const Color(0xffD4E4FA),
          tertiaryColor2: const Color(0xff9DACC2),
          tertiaryColor3: const Color(0xff9DACC2),
          tertiaryColor4: const Color(0xff8392A6),
          tertiaryColor5: const Color(0xff69788C),
          tertiaryColor6: const Color(0xff516072),
          tertiaryColor7: const Color(0xff39485A),
          tertiaryColor8: const Color(0xff233143),
          tertiaryColor9: const Color(0xff0D1C2D),
        ),
      _ => TertiaryColor(
          tertiaryColor1: const Color(0xff161D1C),
          tertiaryColor2: const Color(0xff2B3231),
          tertiaryColor3: const Color(0xff414847),
          tertiaryColor4: const Color(0xff59605E),
          tertiaryColor5: const Color(0xff59605E),
          tertiaryColor6: const Color(0xff8B9291),
          tertiaryColor7: const Color(0xffA5ADAB),
          tertiaryColor8: const Color(0xffC1C8C6),
          tertiaryColor9: const Color(0xffDDE4E2),
        ),
    };
  }
}
