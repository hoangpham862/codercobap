import 'dart:ui';

import 'package:shared/theme/app_theme_manager.dart';

class SecondaryColorData {
  static SecondaryColor getSecondaryColor(String themeId) {
    return switch (AppThemeId(themeId)) {
      AppThemeId.light => SecondaryColor(
          secondaryColor1: const Color(0xff04201B),
          secondaryColor2: const Color(0xff1A352F),
          secondaryColor3: const Color(0xff314C46),
          secondaryColor4: const Color(0xff48645D),
          secondaryColor5: const Color(0xff617D75),
          secondaryColor6: const Color(0xff7A978F),
          secondaryColor7: const Color(0xff94B1A9),
          secondaryColor8: const Color(0xffAFCDC4),
          secondaryColor9: const Color(0xffCBE9E0),
        ),
      AppThemeId.dark => SecondaryColor(
          secondaryColor1: const Color(0xff0B1C30),
          secondaryColor2: const Color(0xff213145),
          secondaryColor3: const Color(0xff38485D),
          secondaryColor4: const Color(0xff505F76),
          secondaryColor5: const Color(0xff68788F),
          secondaryColor6: const Color(0xff8292AA),
          secondaryColor7: const Color(0xff9CACC5),
          secondaryColor8: const Color(0xffB7C8E1),
          secondaryColor9: const Color(0xffD3E4FE),
        ),
      _ => SecondaryColor(
          secondaryColor1: const Color(0xff04201B),
          secondaryColor2: const Color(0xff1A352F),
          secondaryColor3: const Color(0xff314C46),
          secondaryColor4: const Color(0xff48645D),
          secondaryColor5: const Color(0xff617D75),
          secondaryColor6: const Color(0xff7A978F),
          secondaryColor7: const Color(0xff94B1A9),
          secondaryColor8: const Color(0xffAFCDC4),
          secondaryColor9: const Color(0xffCBE9E0),
        ),
    };
  }
}
