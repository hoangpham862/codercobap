import 'package:shared/theme/themes/app_dark_theme.dart';
import 'package:shared/theme/themes/app_light_theme.dart';
import 'package:theme_provider/theme_provider.dart';

export 'extensions/extensions.dart';
export 'app_theme_id.dart';
export 'data/theme_data.dart';

class AppThemeManager {
  static List<AppTheme> get themes {
    return [dark, light];
  }
}
