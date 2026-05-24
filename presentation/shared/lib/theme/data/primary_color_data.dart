import 'package:flutter/material.dart';

import '../app_theme_manager.dart';

class PrimaryColorData {
  static PrimaryColor getPrimaryColor(String themeId) {
    return switch (AppThemeId(themeId)) {
      AppThemeId.light => PrimaryColor(
          primaryColor1: const Color(0xff012020),
          primaryColor2: const Color(0xffC5C7C6),
          primaryColor3: const Color(0xffAAABAB),
          primaryColor4: const Color(0xff8F9190),
          primaryColor5: const Color(0xff757777),
          primaryColor6: const Color(0xff5C5F5E),
          primaryColor7: const Color(0xff454747),
          primaryColor8: const Color(0xff2E3131),
          primaryColor9: const Color(0xff191C1C),
        ),
      AppThemeId.dark => PrimaryColor(
          primaryColor1: const Color(0xffA0ACC2),
          primaryColor2: const Color(0xffA0ACC2),
          primaryColor3: const Color(0xffA0ACC2),
          primaryColor4: const Color(0xffA0ACC2),
          primaryColor5: const Color(0xffA0ACC2),
          primaryColor6: const Color(0xffA0ACC2),
          primaryColor7: const Color(0xffA0ACC2),
          primaryColor8: const Color(0xff263143),
          primaryColor9: const Color(0xff0D1C2D),
        ),
      _ => PrimaryColor(
          primaryColor1: const Color(0xffE1E3E2),
          primaryColor2: const Color(0xffC5C7C6),
          primaryColor3: const Color(0xffAAABAB),
          primaryColor4: const Color(0xff8F9190),
          primaryColor5: const Color(0xff757777),
          primaryColor6: const Color(0xff5C5F5E),
          primaryColor7: const Color(0xff454747),
          primaryColor8: const Color(0xff2E3131),
          primaryColor9: const Color(0xff191C1C),
        )
    };
  }
}
