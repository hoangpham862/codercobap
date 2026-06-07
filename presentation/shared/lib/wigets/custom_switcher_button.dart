import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CustomSwitcherButton extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? thumbColor;
  final double width;
  final double height;
  final Duration duration;

  const CustomSwitcherButton({
    super.key,
    required this.value,
    this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
    this.width = 60.0,
    this.height = 32.0,
    this.duration = const Duration(milliseconds: 250),
  });

  @override
  State<CustomSwitcherButton> createState() => _CustomSwitcherButtonState();
}

class _CustomSwitcherButtonState extends State<CustomSwitcherButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    // Initialize controller value based on initial state
    if (widget.value) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(covariant CustomSwitcherButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      setState(() {
        _value = widget.value;
      });
      if (_value) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void changeValue() {
    setState(() {
      _value = !_value;
    });
    if (_value) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    widget.onChanged?.call(_value);
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        ThemeProvider.themeOf(context).data.extension<AppColorTheme>();
    final activeColor = widget.activeColor ??
        themeExtension?.activeSwitcherColor ??
        const Color(0xff444BA4);
    final inactiveColor = widget.inactiveColor ??
        themeExtension?.neutralColor.neutralColor7 ??
        const Color(0xffC5C7C6);

    return GestureDetector(
      onTap: changeValue,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final double progress = Curves.easeInOut.transform(_controller.value);
          final color = Color.lerp(inactiveColor, activeColor, progress);
          final iconColor = themeExtension?.neutralColor.neutralColor9;
          final alignment = Alignment.lerp(
              Alignment.centerLeft, Alignment.centerRight, progress)!;

          return Container(
            width: widget.width,
            height: widget.height,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(widget.height / 2),
            ),
            child: Align(
              alignment: alignment,
              child: Container(
                width: widget.height - 8.0,
                height: widget.height - 8.0,
                decoration: BoxDecoration(
                  color: widget.thumbColor ?? Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppImageName.icLeg.rsc(),
                    colorFilter: ColorFilter.mode(
                      iconColor ?? Colors.white,
                      BlendMode.srcIn,
                    ),
                    width: widget.height * 0.5,
                    height: widget.height * 0.5,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
