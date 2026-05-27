import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared/shared.dart';
//
export 'bloc/blocs.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = ThemeProvider.themeOf(context)
        .data
        .extension<AppTextStyleTheme>()
        ?.neu6Medi24;

    return ScaffoldBase(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.height * 0.5,
                child: Image(image: AssetImage(AppImageName.splashImage.rsc())),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "NekoFocus",
                style: textStyle?.copyWith(fontSize: 30),
              ),
              const SizedBox(height: 40),
              const CustomProgressBar()
            ],
          ),
        ),
      ),
    );
  }
}
