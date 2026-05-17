import 'package:codercobap/app.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

void main() {
  runApp(EasyLocalization(
      supportedLocales: const [Locale('vi', 'VI'), Locale('en', 'EN')],
      path: "translations".rsc(),
      fallbackLocale: const Locale('vi', 'VI'),
      startLocale: const Locale('vi', 'VI'),
      assetLoader: const YamlAssetLoader(),
      child: const App()));
}
