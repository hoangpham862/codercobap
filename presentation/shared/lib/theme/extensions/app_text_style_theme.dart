import 'package:flutter/material.dart';

class AppTextStyleTheme extends ThemeExtension<AppTextStyleTheme> {
  ///neu1
  final TextStyle? neu1Medi10;
  final TextStyle? neu1Medi11;
  final TextStyle? neu1Medi12;
  final TextStyle? neu1Medi14;
  final TextStyle? neu1Medi16;
  final TextStyle? neu1Medi18;
  final TextStyle? neu1Medi20;
  final TextStyle? neu1Medi24;
  final TextStyle? neu1Regu10;
  final TextStyle? neu1Regu11;
  final TextStyle? neu1Regu12;
  final TextStyle? neu1Regu14;
  final TextStyle? neu1Regu16;
  final TextStyle? neu1Regu18;
  final TextStyle? neu1Regu20;
  final TextStyle? neu1Regu24;
  final TextStyle? neu1Bold10;
  final TextStyle? neu1Bold11;
  final TextStyle? neu1Bold12;
  final TextStyle? neu1Bold14;
  final TextStyle? neu1Bold16;
  final TextStyle? neu1Bold18;
  final TextStyle? neu1Bold20;
  final TextStyle? neu1Bold24;

  ///neu2
  final TextStyle? neu2Medi10;
  final TextStyle? neu2Medi11;
  final TextStyle? neu2Medi12;
  final TextStyle? neu2Medi14;
  final TextStyle? neu2Medi16;
  final TextStyle? neu2Medi18;
  final TextStyle? neu2Medi20;
  final TextStyle? neu2Medi24;
  final TextStyle? neu2Regu10;
  final TextStyle? neu2Regu11;
  final TextStyle? neu2Regu12;
  final TextStyle? neu2Regu14;
  final TextStyle? neu2Regu16;
  final TextStyle? neu2Regu18;
  final TextStyle? neu2Regu20;
  final TextStyle? neu2Regu24;

  ///Primary
  final TextStyle? primaryMedi12;
  final TextStyle? primaryMedi14;
  final TextStyle? primaryMedi16;
  final TextStyle? primaryRegu12;
  final TextStyle? primaryRegu14;
  final TextStyle? primaryRegu16;
  final TextStyle? onPrimaryMedi12;
  final TextStyle? onPrimaryMedi14;
  final TextStyle? onPrimaryMedi16;
  final TextStyle? onPrimaryRegu12;
  final TextStyle? onPrimaryRegu14;
  final TextStyle? onPrimaryRegu16;

  const AppTextStyleTheme({
    this.neu1Medi10,
    this.neu1Medi11,
    this.neu1Medi12,
    this.neu1Medi14,
    this.neu1Medi16,
    this.neu1Medi18,
    this.neu1Medi20,
    this.neu1Medi24,
    this.neu1Regu10,
    this.neu1Regu11,
    this.neu1Regu12,
    this.neu1Regu14,
    this.neu1Regu16,
    this.neu1Regu18,
    this.neu1Regu20,
    this.neu1Regu24,
    this.neu1Bold10,
    this.neu1Bold11,
    this.neu1Bold12,
    this.neu1Bold14,
    this.neu1Bold16,
    this.neu1Bold18,
    this.neu1Bold20,
    this.neu1Bold24,
    this.neu2Medi10,
    this.neu2Medi11,
    this.neu2Medi12,
    this.neu2Medi14,
    this.neu2Medi16,
    this.neu2Medi18,
    this.neu2Medi20,
    this.neu2Medi24,
    this.neu2Regu10,
    this.neu2Regu11,
    this.neu2Regu12,
    this.neu2Regu14,
    this.neu2Regu16,
    this.neu2Regu18,
    this.neu2Regu20,
    this.neu2Regu24,
    this.primaryMedi12,
    this.primaryMedi14,
    this.primaryMedi16,
    this.primaryRegu12,
    this.primaryRegu14,
    this.primaryRegu16,
    this.onPrimaryMedi12,
    this.onPrimaryMedi14,
    this.onPrimaryMedi16,
    this.onPrimaryRegu12,
    this.onPrimaryRegu14,
    this.onPrimaryRegu16,
  });

  @override
  ThemeExtension<AppTextStyleTheme> copyWith({
    TextStyle? neu1Medi10,
    TextStyle? neu1Medi11,
    TextStyle? neu1Medi12,
    TextStyle? neu1Medi14,
    TextStyle? neu1Medi16,
    TextStyle? neu1Medi18,
    TextStyle? neu1Medi20,
    TextStyle? neu1Medi24,
    TextStyle? neu1Regu10,
    TextStyle? neu1Regu11,
    TextStyle? neu1Regu12,
    TextStyle? neu1Regu14,
    TextStyle? neu1Regu16,
    TextStyle? neu1Regu18,
    TextStyle? neu1Regu20,
    TextStyle? neu1Regu24,
    TextStyle? neu1Bold10,
    TextStyle? neu1Bold11,
    TextStyle? neu1Bold12,
    TextStyle? neu1Bold14,
    TextStyle? neu1Bold16,
    TextStyle? neu1Bold18,
    TextStyle? neu1Bold20,
    TextStyle? neu1Bold24,
    TextStyle? neu2Medi10,
    TextStyle? neu2Medi11,
    TextStyle? neu2Medi12,
    TextStyle? neu2Medi14,
    TextStyle? neu2Medi16,
    TextStyle? neu2Medi18,
    TextStyle? neu2Medi20,
    TextStyle? neu2Medi24,
    TextStyle? neu2Regu10,
    TextStyle? neu2Regu11,
    TextStyle? neu2Regu12,
    TextStyle? neu2Regu14,
    TextStyle? neu2Regu16,
    TextStyle? neu2Regu18,
    TextStyle? neu2Regu20,
    TextStyle? neu2Regu24,
    TextStyle? primaryMedi12,
    TextStyle? primaryMedi14,
    TextStyle? primaryMedi16,
    TextStyle? primaryRegu12,
    TextStyle? primaryRegu14,
    TextStyle? primaryRegu16,
    TextStyle? onPrimaryMedi12,
    TextStyle? onPrimaryMedi14,
    TextStyle? onPrimaryMedi16,
    TextStyle? onPrimaryRegu12,
    TextStyle? onPrimaryRegu14,
    TextStyle? onPrimaryRegu16,
  }) {
    return AppTextStyleTheme(
      neu1Medi10: neu1Medi10 ?? this.neu1Medi10,
      neu1Medi11: neu1Medi11 ?? this.neu1Medi11,
      neu1Medi12: neu1Medi12 ?? this.neu1Medi12,
      neu1Medi14: neu1Medi14 ?? this.neu1Medi14,
      neu1Medi16: neu1Medi16 ?? this.neu1Medi16,
      neu1Medi18: neu1Medi18 ?? this.neu1Medi18,
      neu1Medi20: neu1Medi20 ?? this.neu1Medi20,
      neu1Medi24: neu1Medi24 ?? this.neu1Medi24,
      neu1Regu10: neu1Regu10 ?? this.neu1Regu10,
      neu1Regu11: neu1Regu11 ?? this.neu1Regu11,
      neu1Regu12: neu1Regu12 ?? this.neu1Regu12,
      neu1Regu14: neu1Regu14 ?? this.neu1Regu14,
      neu1Regu16: neu1Regu16 ?? this.neu1Regu16,
      neu1Regu18: neu1Regu18 ?? this.neu1Regu18,
      neu1Regu20: neu1Regu20 ?? this.neu1Regu20,
      neu1Regu24: neu1Regu24 ?? this.neu1Regu24,
      neu1Bold10: neu1Bold10 ?? this.neu1Bold10,
      neu1Bold11: neu1Bold11 ?? this.neu1Bold11,
      neu1Bold12: neu1Bold12 ?? this.neu1Bold12,
      neu1Bold14: neu1Bold14 ?? this.neu1Bold14,
      neu1Bold16: neu1Bold16 ?? this.neu1Bold16,
      neu1Bold18: neu1Bold18 ?? this.neu1Bold18,
      neu1Bold20: neu1Bold20 ?? this.neu1Bold20,
      neu1Bold24: neu1Bold24 ?? this.neu1Bold24,
      neu2Medi10: neu2Medi10 ?? this.neu2Medi10,
      neu2Medi11: neu2Medi11 ?? this.neu2Medi11,
      neu2Medi12: neu2Medi12 ?? this.neu2Medi12,
      neu2Medi14: neu2Medi14 ?? this.neu2Medi14,
      neu2Medi16: neu2Medi16 ?? this.neu2Medi16,
      neu2Medi18: neu2Medi18 ?? this.neu2Medi18,
      neu2Medi20: neu2Medi20 ?? this.neu2Medi20,
      neu2Medi24: neu2Medi24 ?? this.neu2Medi24,
      neu2Regu10: neu2Regu10 ?? this.neu2Regu10,
      neu2Regu11: neu2Regu11 ?? this.neu2Regu11,
      neu2Regu12: neu2Regu12 ?? this.neu2Regu12,
      neu2Regu14: neu2Regu14 ?? this.neu2Regu14,
      neu2Regu16: neu2Regu16 ?? this.neu2Regu16,
      neu2Regu18: neu2Regu18 ?? this.neu2Regu18,
      neu2Regu20: neu2Regu20 ?? this.neu2Regu20,
      neu2Regu24: neu2Regu24 ?? this.neu2Regu24,
      primaryMedi12: primaryMedi12 ?? this.primaryMedi12,
      primaryMedi14: primaryMedi14 ?? this.primaryMedi14,
      primaryMedi16: primaryMedi16 ?? this.primaryMedi16,
      primaryRegu12: primaryRegu12 ?? this.primaryRegu12,
      primaryRegu14: primaryRegu14 ?? this.primaryRegu14,
      primaryRegu16: primaryRegu16 ?? this.primaryRegu16,
      onPrimaryMedi12: onPrimaryMedi12 ?? this.onPrimaryMedi12,
      onPrimaryMedi14: onPrimaryMedi14 ?? this.onPrimaryMedi14,
      onPrimaryMedi16: onPrimaryMedi16 ?? this.onPrimaryMedi16,
      onPrimaryRegu12: onPrimaryRegu12 ?? this.onPrimaryRegu12,
      onPrimaryRegu14: onPrimaryRegu14 ?? this.onPrimaryRegu14,
      onPrimaryRegu16: onPrimaryRegu16 ?? this.onPrimaryRegu16,
    );
  }

  @override
  AppTextStyleTheme lerp(ThemeExtension<AppTextStyleTheme>? other, double t) {
    if (other is! AppTextStyleTheme) return this;
    return AppTextStyleTheme(
      neu1Medi10: TextStyle.lerp(neu1Medi10, other.neu1Medi10, t),
      neu1Medi11: TextStyle.lerp(neu1Medi11, other.neu1Medi11, t),
      neu1Medi12: TextStyle.lerp(neu1Medi12, other.neu1Medi12, t),
      neu1Medi14: TextStyle.lerp(neu1Medi14, other.neu1Medi14, t),
      neu1Medi16: TextStyle.lerp(neu1Medi16, other.neu1Medi16, t),
      neu1Medi18: TextStyle.lerp(neu1Medi18, other.neu1Medi18, t),
      neu1Medi20: TextStyle.lerp(neu1Medi20, other.neu1Medi20, t),
      neu1Medi24: TextStyle.lerp(neu1Medi24, other.neu1Medi24, t),
      neu1Regu10: TextStyle.lerp(neu1Regu10, other.neu1Regu10, t),
      neu1Regu11: TextStyle.lerp(neu1Regu11, other.neu1Regu11, t),
      neu1Regu12: TextStyle.lerp(neu1Regu12, other.neu1Regu12, t),
      neu1Regu14: TextStyle.lerp(neu1Regu14, other.neu1Regu14, t),
      neu1Regu16: TextStyle.lerp(neu1Regu16, other.neu1Regu16, t),
      neu1Regu18: TextStyle.lerp(neu1Regu18, other.neu1Regu18, t),
      neu1Regu20: TextStyle.lerp(neu1Regu20, other.neu1Regu20, t),
      neu1Regu24: TextStyle.lerp(neu1Regu24, other.neu1Regu24, t),
      neu1Bold10: TextStyle.lerp(neu1Bold10, other.neu1Bold10, t),
      neu1Bold11: TextStyle.lerp(neu1Bold11, other.neu1Bold11, t),
      neu1Bold12: TextStyle.lerp(neu1Bold12, other.neu1Bold12, t),
      neu1Bold14: TextStyle.lerp(neu1Bold14, other.neu1Bold14, t),
      neu1Bold16: TextStyle.lerp(neu1Bold16, other.neu1Bold16, t),
      neu1Bold18: TextStyle.lerp(neu1Bold18, other.neu1Bold18, t),
      neu1Bold20: TextStyle.lerp(neu1Bold20, other.neu1Bold20, t),
      neu1Bold24: TextStyle.lerp(neu1Bold24, other.neu1Bold24, t),
      neu2Medi10: TextStyle.lerp(neu2Medi10, other.neu2Medi10, t),
      neu2Medi11: TextStyle.lerp(neu2Medi11, other.neu2Medi11, t),
      neu2Medi12: TextStyle.lerp(neu2Medi12, other.neu2Medi12, t),
      neu2Medi14: TextStyle.lerp(neu2Medi14, other.neu2Medi14, t),
      neu2Medi16: TextStyle.lerp(neu2Medi16, other.neu2Medi16, t),
      neu2Medi18: TextStyle.lerp(neu2Medi18, other.neu2Medi18, t),
      neu2Medi20: TextStyle.lerp(neu2Medi20, other.neu2Medi20, t),
      neu2Medi24: TextStyle.lerp(neu2Medi24, other.neu2Medi24, t),
      neu2Regu10: TextStyle.lerp(neu2Regu10, other.neu2Regu10, t),
      neu2Regu11: TextStyle.lerp(neu2Regu11, other.neu2Regu11, t),
      neu2Regu12: TextStyle.lerp(neu2Regu12, other.neu2Regu12, t),
      neu2Regu14: TextStyle.lerp(neu2Regu14, other.neu2Regu14, t),
      neu2Regu16: TextStyle.lerp(neu2Regu16, other.neu2Regu16, t),
      neu2Regu18: TextStyle.lerp(neu2Regu18, other.neu2Regu18, t),
      neu2Regu20: TextStyle.lerp(neu2Regu20, other.neu2Regu20, t),
      neu2Regu24: TextStyle.lerp(neu2Regu24, other.neu2Regu24, t),
      primaryMedi12: TextStyle.lerp(primaryMedi12, other.primaryMedi12, t),
      primaryMedi14: TextStyle.lerp(primaryMedi14, other.primaryMedi14, t),
      primaryMedi16: TextStyle.lerp(primaryMedi16, other.primaryMedi16, t),
      primaryRegu12: TextStyle.lerp(primaryRegu12, other.primaryRegu12, t),
      primaryRegu14: TextStyle.lerp(primaryRegu14, other.primaryRegu14, t),
      primaryRegu16: TextStyle.lerp(primaryRegu16, other.primaryRegu16, t),
      onPrimaryMedi12:
          TextStyle.lerp(onPrimaryMedi12, other.onPrimaryMedi12, t),
      onPrimaryMedi14:
          TextStyle.lerp(onPrimaryMedi14, other.onPrimaryMedi14, t),
      onPrimaryMedi16:
          TextStyle.lerp(onPrimaryMedi16, other.onPrimaryMedi16, t),
      onPrimaryRegu12:
          TextStyle.lerp(onPrimaryRegu12, other.onPrimaryRegu12, t),
      onPrimaryRegu14:
          TextStyle.lerp(onPrimaryRegu14, other.onPrimaryRegu14, t),
      onPrimaryRegu16:
          TextStyle.lerp(onPrimaryRegu16, other.onPrimaryRegu16, t),
    );
  }
}
