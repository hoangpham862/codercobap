import 'dart:ui';
import '../app_theme_manager.dart';

class NeutralColorData {
  static NeutralColor getNeutralColor(String themeId) {
    return switch (AppThemeId(themeId)) {
      AppThemeId.light => NeutralColor(
          neutralColor1: const Color(0xff191C1C),
          neutralColor2: const Color(0xff2E3131),
          neutralColor3: const Color(0xff454747),
          neutralColor4: const Color(0xff5C5F5E),
          neutralColor5: const Color(0xff757777),
          neutralColor6: const Color(0xff8F9190),
          neutralColor7: const Color(0xffAAABAB),
          neutralColor8: const Color(0xffC5C7C6),
          neutralColor9: const Color(0xffE1E3E2),
        ),
      AppThemeId.dark => NeutralColor(
          neutralColor1: const Color(0xffD8E3FB),
          neutralColor2: const Color(0xffBCC7DE),
          neutralColor3: const Color(0xffA0ACC2),
          neutralColor4: const Color(0xff8691A7),
          neutralColor5: const Color(0xff6C778D),
          neutralColor6: const Color(0xff545F73),
          neutralColor7: const Color(0xff3C475A),
          neutralColor8: const Color(0xff263143),
          neutralColor9: const Color(0xff263143),
        ),
      _ => NeutralColor(
          neutralColor1: const Color(0xff191C1C),
          neutralColor2: const Color(0xff2E3131),
          neutralColor3: const Color(0xff454747),
          neutralColor4: const Color(0xff5C5F5E),
          neutralColor5: const Color(0xff757777),
          neutralColor6: const Color(0xff8F9190),
          neutralColor7: const Color(0xffAAABAB),
          neutralColor8: const Color(0xffC5C7C6),
          neutralColor9: const Color(0xffE1E3E2),
        )
    };
  }
}
