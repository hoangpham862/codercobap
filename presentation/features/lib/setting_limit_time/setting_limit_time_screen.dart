import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'bloc/bloc.dart';

class SettingLimitTimeScreen extends StatefulWidget {
  final String? appName;
  final String? packageName;
  const SettingLimitTimeScreen({
    super.key,
    this.appName,
    this.packageName,
  });
  static Widget create({String? packageName, String? appName}) {
    return SettingLimitTimeScreen(
      packageName: packageName,
      appName: appName,
    );
  }

  @override
  State<SettingLimitTimeScreen> createState() => _SettingLimitTimeScreenState();
}

class _SettingLimitTimeScreenState extends State<SettingLimitTimeScreen> {
  late SettingLimitTimeBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = SettingLimitTimeBloc();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.themeOf(context).data;
    final neutralColor = theme.extension<AppColorTheme>()?.neutralColor;

    Uint8List? appIcon = widget.packageName != null
        ? locator<AppRepository>().getIconForPackage(widget.packageName!)
        : null;

    return ScaffoldBase(
      appBar: AppBar(
        leading: CommonFunction.buildBackButton(
          context,
          color: neutralColor?.neutralColor1 ?? Colors.black,
        ),
        title: Text(
          'Cài đặt giới hạn',
          style: ThemeProvider.themeOf(context)
              .data
              .extension<AppTextStyleTheme>()
              ?.neu1Bold20,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings_outlined,
              color: neutralColor?.neutralColor1 ?? Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // App Icon Container
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xffFFF3EE),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12),
              child: appIcon != null
                  ? Image.memory(
                      appIcon,
                      fit: BoxFit.contain,
                    )
                  : Icon(
                      Icons.android,
                      size: 40,
                      color: theme.colorScheme.primary,
                    ),
            ),
            const SizedBox(height: 16),
            // App Name
            Text(
              widget.appName ?? 'Ứng dụng',
              style: theme.extension<AppTextStyleTheme>()?.neu1Medi24?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: neutralColor?.neutralColor1 ?? Colors.black,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              'Giới hạn thời gian sử dụng mỗi ngày',
              style: theme.extension<AppTextStyleTheme>()?.neu1Regu14?.copyWith(
                    color: neutralColor?.neutralColor3 ?? Colors.grey,
                  ),
            ),
            const SizedBox(height: 32),
            // Hours & Minutes Horizontal Scoreboard Display
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocSelector<SettingLimitTimeBloc, BaseState, int>(
                  bloc: _bloc,
                  selector: (state) => _bloc.minutes,
                  builder: (context, minutes) {
                    final hoursStr = (minutes ~/ 60).toString().padLeft(2, '0');
                    return ScoreBoardCard(value: hoursStr);
                  },
                ),
                const SizedBox(width: 8),
                Text(
                  'giờ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: neutralColor?.neutralColor3 ?? Colors.grey,
                  ),
                ),
                const SizedBox(width: 16),
                BlocSelector<SettingLimitTimeBloc, BaseState, int>(
                  bloc: _bloc,
                  selector: (state) => _bloc.minutes,
                  builder: (context, minutes) {
                    final minutesStr = (minutes % 60).toString().padLeft(2, '0');
                    return ScoreBoardCard(value: minutesStr);
                  },
                ),
                const SizedBox(width: 8),
                Text(
                  'phút',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: neutralColor?.neutralColor3 ?? Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Horizontal Slider
            BlocSelector<SettingLimitTimeBloc, BaseState, int>(
                bloc: _bloc,
                selector: (state) => _bloc.minutes,
                builder: (context, minutes) {
                  return SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: theme.colorScheme.primary,
                      inactiveTrackColor:
                          neutralColor?.neutralColor8 ?? Colors.grey.shade300,
                      thumbColor: theme.colorScheme.primary,
                      overlayColor:
                          theme.colorScheme.primary.withValues(alpha: 0.12),
                      trackHeight: 8.0,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 24.0),
                    ),
                    child: Slider(
                      value: _bloc.minutes.toDouble(),
                      min: 5.0,
                      max: 180.0,
                      divisions: 35, // (180 - 5) / 5
                      onChanged: (val) {
                        _bloc.add(ChangeTimeLimitEvent(minutes: val.round()));
                      },
                    ),
                  );
                }),

            // Min & Max Labels underneath the slider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '5 phút',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: neutralColor?.neutralColor3 ?? Colors.grey,
                    ),
                  ),
                  Text(
                    '3 giờ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: neutralColor?.neutralColor3 ?? Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Helper Info Pill
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff576060),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const Text(
                'Kéo thanh trượt để thay đổi thời gian',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Card Options
            BlocSelector<SettingLimitTimeBloc, BaseState, bool>(
              bloc: _bloc,
              selector: (state) => _bloc.enableApplyAllDays,
              builder: (context, enableApplyAllDays) {
                return _buildOptionCard(
                  context,
                  icon: Icons.calendar_today_outlined,
                  title: 'Apply to all days',
                  subtitle: 'Áp dụng cho mọi ngày trong tuần',
                  value: enableApplyAllDays,
                  onChanged: (val) {
                    _bloc.add(ApplyAllDaysEvent(enable: val));
                  },
                );
              },
            ),
            const SizedBox(height: 12),
            BlocSelector<SettingLimitTimeBloc, BaseState, bool>(
              bloc: _bloc,
              selector: (state) => _bloc.enableWeekenOnly,
              builder: (context, enableWeekenOnly) {
                return _buildOptionCard(
                  context,
                  icon: Icons.weekend_outlined,
                  title: 'Weekend only',
                  subtitle: 'Chỉ giới hạn vào Thứ 7 & Chủ Nhật',
                  value: enableWeekenOnly,
                  onChanged: (val) {
                    _bloc.add(ApplyWeekenOnlyEvent(enable: val));
                  },
                );
              },
            ),
            const SizedBox(height: 40),

            // Save Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Perform save action
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Đã lưu cấu hình giới hạn thời gian'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                icon: const Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                ),
                label: const Text(
                  'Lưu Cài đặt',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    final theme = ThemeProvider.themeOf(context).data;
    final neutralColor = theme.extension<AppColorTheme>()?.neutralColor;

    return Container(
      decoration: BoxDecoration(
        // color: const Color(0xffF4F5F4),
        borderRadius: BorderRadius.circular(16),
        // border: Border.all(
        //   color: ThemeProvider.themeOf(context)
        //           .data
        //           .extension<AppColorTheme>()
        //           ?.neutralColor
        //           ?.neutralColor9 ??
        //       Colors.transparent,
        // ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(12),
                ),
            child: Icon(
              icon,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme
                      .extension<AppTextStyleTheme>()
                      ?.neu1Medi16
                      ?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: neutralColor?.neutralColor1 ?? Colors.black,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: theme
                      .extension<AppTextStyleTheme>()
                      ?.neu1Regu12
                      ?.copyWith(
                        color: neutralColor?.neutralColor3 ?? Colors.grey,
                      ),
                ),
              ],
            ),
          ),
          CustomSwitcherButton(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

class ScoreBoardCard extends StatelessWidget {
  final String value;
  final Color? cardColor;
  final Color? textColor;

  const ScoreBoardCard({
    super.key,
    required this.value,
    this.cardColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.themeOf(context).data;
    final neutralColor = theme.extension<AppColorTheme>()?.neutralColor;
    
    // Choose a suitable scoreboard background (dark charcoal color)
    final bg = cardColor ?? neutralColor?.neutralColor2 ?? const Color(0xff2E3131);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 350),
      transitionBuilder: (child, animation) {
        final rotate = Tween(begin: pi / 2, end: 0.0).animate(
          CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
        );
        return AnimatedBuilder(
          animation: rotate,
          child: child,
          builder: (context, child) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.002) // 3D Perspective
                ..rotateX(rotate.value),
              alignment: Alignment.center,
              child: child,
            );
          },
        );
      },
      child: Stack(
        key: ValueKey<String>(value),
        alignment: Alignment.center,
        children: [
          Container(
            width: 70,
            height: 80,
            decoration: BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.15),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
          // Horizontal physical split line in the center of the board
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 1.5,
              color: Colors.black.withValues(alpha: 0.45),
            ),
          ),
        ],
      ),
    );
  }
}
