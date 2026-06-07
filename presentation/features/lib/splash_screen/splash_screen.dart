import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import 'bloc/blocs.dart';
//
export 'bloc/blocs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashScreenBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = SplashScreenBloc();
    _bloc.getListApplication();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = ThemeProvider.themeOf(context)
        .data
        .extension<AppTextStyleTheme>()
        ?.neu1Medi24;
    return ScaffoldBase(
      body: BlocListener<SplashScreenBloc, BaseState>(
        bloc: _bloc,
        listener: (context, state) {
          if (state is LoadedState<CustomProgressBarEvent>) {
            final progress = state.data as double;
            if (progress >= 1.0) {
              Navigator.pushReplacementNamed(context, NavigationConst.home);
            }
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.height * 0.5,
                  child:
                      Image(image: AssetImage(AppImageName.splashImage.rsc())),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "NekoFocus",
                  style: textStyle?.copyWith(fontSize: 30),
                ),
                const SizedBox(height: 40),
                BlocBuilder<SplashScreenBloc, BaseState>(
                  bloc: _bloc,
                  builder: (context, state) {
                    double progress = 0.0;
                    if (state is LoadedState<CustomProgressBarEvent>) {
                      progress = state.data as double;
                    }
                    return CustomProgressBar(progress: progress);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
