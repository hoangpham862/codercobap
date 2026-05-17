import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/shared.dart';
import 'package:shared/wigets/scaffold_base.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = ThemeProvider.themeOf(context).data.extension<AppTextStyleTheme>()?.cat6Medi24;
    return ScaffoldBase(
      body: Center(
        child: Text(
          "Cat Manager",
          style: textStyle?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
