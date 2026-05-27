import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CustomProgressBar extends StatefulWidget {
  const CustomProgressBar({super.key});

  @override
  State<CustomProgressBar> createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      double progress = 0.7;
      double currentProgressWidth = maxWidth * progress;
      return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          Container(
            width: maxWidth,
            height: 20,
            decoration: BoxDecoration(
                color: ThemeProvider.themeOf(context)
                    .data
                    .extension<AppColorTheme>()
                    ?.neutralColor
                    .neutralColor9,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: ThemeProvider.themeOf(context)
                          .data
                          .extension<AppColorTheme>()
                          ?.neutralColor
                          .neutralColor8 ??
                      Colors.grey,
                )),
          ),
          //
          Container(
            width: currentProgressWidth,
            height: 20,
            decoration: BoxDecoration(
                color: ThemeProvider.themeOf(context).data.colorScheme.primary,
                borderRadius: BorderRadius.circular(12)),
          ),
          //
          Positioned(
              left: currentProgressWidth - 12,
              child: SvgPicture.asset(
                AppImageName.icLeg.rsc(),
                colorFilter: ColorFilter.mode(
                    ThemeProvider.themeOf(context).data.colorScheme.primary,
                    BlendMode.srcIn),
                width: 24,
                height: 24,
              ))
        ],
      );
    });
  }
}
