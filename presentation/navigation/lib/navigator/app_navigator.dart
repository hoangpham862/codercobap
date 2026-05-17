import 'package:flutter/widgets.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext? get navigatorContext => navigatorKey.currentContext;
}
