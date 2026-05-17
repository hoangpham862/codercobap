import 'package:features/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigator/navigation_const.dart';

class NavigationConfig {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConst.splashScreen:
        return _buildRoute(settings, const SplashScreen());
      case NavigationConst.home:
        return _buildRoute(settings, Container());
      default:
        return _buildRoute(settings, Container());
    }
  }

  static Route<dynamic> _buildRoute(
    RouteSettings setting,
    Widget view, {
    bool fullScreenDialog = false,
  }) {
    return MaterialPageRoute(builder: (context) => view, settings: setting, fullscreenDialog: fullScreenDialog);
  }
}
