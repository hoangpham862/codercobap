import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CommonFunction {
  static Widget buildBackButton(BuildContext context,
      {Function? onTap, Color? color}) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap();
        } else {
          Navigator.of(context).pop();
        }
      },
      child: Icon(
        Icons.keyboard_backspace_outlined,
        size: 20,
        color: color ??
            ThemeProvider.themeOf(context)
                .data
                .extension<AppColorTheme>()
                ?.neutralColor
                .neutralColor9,
      ),
    );
  }
}
