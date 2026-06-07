import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    setupLocator();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        saveThemesOnChange: true,
        loadThemeOnInit: true,
        themes: AppThemeManager.themes,
        defaultThemeId: AppThemeId.dark.value,
        child: ThemeConsumer(
          child: Builder(builder: (themeContext) {
            return MediaQuery(
              data: MediaQuery.of(themeContext).copyWith(
                  textScaler: const TextScaler.linear(1.0)
                      .clamp(minScaleFactor: 0.9, maxScaleFactor: 1.1)),
              child: MaterialApp(
                builder: (context, child) {
                  return child!;
                },
                navigatorKey: AppNavigator.navigatorKey,
                title: "Cat Manager",
                theme: ThemeProvider.themeOf(themeContext).data,
                initialRoute: NavigationConst.splashScreen,
                localizationsDelegates: themeContext.localizationDelegates,
                supportedLocales: themeContext.supportedLocales,
                locale: themeContext.locale,
                onGenerateRoute: (settings) =>
                    NavigationConfig.onGenerateRoute(settings),
              ),
            );
          }),
        ));
  }
}
