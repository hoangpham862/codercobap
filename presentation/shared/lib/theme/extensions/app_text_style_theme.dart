import 'package:flutter/material.dart';

class AppTextStyleTheme extends ThemeExtension<AppTextStyleTheme> {
  ///neu8
  final TextStyle? neu8Medi10;
  final TextStyle? neu8Medi11;
  final TextStyle? neu8Medi12;
  final TextStyle? neu8Medi14;
  final TextStyle? neu8Medi16;
  final TextStyle? neu8Medi18;
  final TextStyle? neu8Medi20;
  final TextStyle? neu8Medi24;
  final TextStyle? neu8Regu10;
  final TextStyle? neu8Regu11;
  final TextStyle? neu8Regu12;
  final TextStyle? neu8Regu14;
  final TextStyle? neu8Regu16;
  final TextStyle? neu8Regu18;
  final TextStyle? neu8Regu20;
  final TextStyle? neu8Regu24;
  final TextStyle? neu8Bold10;
  final TextStyle? neu8Bold11;
  final TextStyle? neu8Bold12;
  final TextStyle? neu8Bold14;
  final TextStyle? neu8Bold16;
  final TextStyle? neu8Bold18;
  final TextStyle? neu8Bold20;
  final TextStyle? neu8Bold24;

  ///neu6
  final TextStyle? neu6Medi10;
  final TextStyle? neu6Medi11;
  final TextStyle? neu6Medi12;
  final TextStyle? neu6Medi14;
  final TextStyle? neu6Medi16;
  final TextStyle? neu6Medi18;
  final TextStyle? neu6Medi20;
  final TextStyle? neu6Medi24;
  final TextStyle? neu6Regu10;
  final TextStyle? neu6Regu11;
  final TextStyle? neu6Regu12;
  final TextStyle? neu6Regu14;
  final TextStyle? neu6Regu16;
  final TextStyle? neu6Regu18;
  final TextStyle? neu6Regu20;
  final TextStyle? neu6Regu24;

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
    this.neu8Medi10,
    this.neu8Medi11,
    this.neu8Medi12,
    this.neu8Medi14,
    this.neu8Medi16,
    this.neu8Medi18,
    this.neu8Medi20,
    this.neu8Medi24,
    this.neu8Regu10,
    this.neu8Regu11,
    this.neu8Regu12,
    this.neu8Regu14,
    this.neu8Regu16,
    this.neu8Regu18,
    this.neu8Regu20,
    this.neu8Regu24,
    this.neu8Bold10,
    this.neu8Bold11,
    this.neu8Bold12,
    this.neu8Bold14,
    this.neu8Bold16,
    this.neu8Bold18,
    this.neu8Bold20,
    this.neu8Bold24,
    this.neu6Medi10,
    this.neu6Medi11,
    this.neu6Medi12,
    this.neu6Medi14,
    this.neu6Medi16,
    this.neu6Medi18,
    this.neu6Medi20,
    this.neu6Medi24,
    this.neu6Regu10,
    this.neu6Regu11,
    this.neu6Regu12,
    this.neu6Regu14,
    this.neu6Regu16,
    this.neu6Regu18,
    this.neu6Regu20,
    this.neu6Regu24,
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
    TextStyle? neu8Medi10,
    TextStyle? neu8Medi11,
    TextStyle? neu8Medi12,
    TextStyle? neu8Medi14,
    TextStyle? neu8Medi16,
    TextStyle? neu8Medi18,
    TextStyle? neu8Medi20,
    TextStyle? neu8Medi24,
    TextStyle? neu8Regu10,
    TextStyle? neu8Regu11,
    TextStyle? neu8Regu12,
    TextStyle? neu8Regu14,
    TextStyle? neu8Regu16,
    TextStyle? neu8Regu18,
    TextStyle? neu8Regu20,
    TextStyle? neu8Regu24,
    TextStyle? neu8Bold10,
    TextStyle? neu8Bold11,
    TextStyle? neu8Bold12,
    TextStyle? neu8Bold14,
    TextStyle? neu8Bold16,
    TextStyle? neu8Bold18,
    TextStyle? neu8Bold20,
    TextStyle? neu8Bold24,
    TextStyle? neu6Medi10,
    TextStyle? neu6Medi11,
    TextStyle? neu6Medi12,
    TextStyle? neu6Medi14,
    TextStyle? neu6Medi16,
    TextStyle? neu6Medi18,
    TextStyle? neu6Medi20,
    TextStyle? neu6Medi24,
    TextStyle? neu6Regu10,
    TextStyle? neu6Regu11,
    TextStyle? neu6Regu12,
    TextStyle? neu6Regu14,
    TextStyle? neu6Regu16,
    TextStyle? neu6Regu18,
    TextStyle? neu6Regu20,
    TextStyle? neu6Regu24,
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
      neu8Medi10: neu8Medi10 ?? this.neu8Medi10,
      neu8Medi11: neu8Medi11 ?? this.neu8Medi11,
      neu8Medi12: neu8Medi12 ?? this.neu8Medi12,
      neu8Medi14: neu8Medi14 ?? this.neu8Medi14,
      neu8Medi16: neu8Medi16 ?? this.neu8Medi16,
      neu8Medi18: neu8Medi18 ?? this.neu8Medi18,
      neu8Medi20: neu8Medi20 ?? this.neu8Medi20,
      neu8Medi24: neu8Medi24 ?? this.neu8Medi24,
      neu8Regu10: neu8Regu10 ?? this.neu8Regu10,
      neu8Regu11: neu8Regu11 ?? this.neu8Regu11,
      neu8Regu12: neu8Regu12 ?? this.neu8Regu12,
      neu8Regu14: neu8Regu14 ?? this.neu8Regu14,
      neu8Regu16: neu8Regu16 ?? this.neu8Regu16,
      neu8Regu18: neu8Regu18 ?? this.neu8Regu18,
      neu8Regu20: neu8Regu20 ?? this.neu8Regu20,
      neu8Regu24: neu8Regu24 ?? this.neu8Regu24,
      neu8Bold10: neu8Bold10 ?? this.neu8Bold10,
      neu8Bold11: neu8Bold11 ?? this.neu8Bold11,
      neu8Bold12: neu8Bold12 ?? this.neu8Bold12,
      neu8Bold14: neu8Bold14 ?? this.neu8Bold14,
      neu8Bold16: neu8Bold16 ?? this.neu8Bold16,
      neu8Bold18: neu8Bold18 ?? this.neu8Bold18,
      neu8Bold20: neu8Bold20 ?? this.neu8Bold20,
      neu8Bold24: neu8Bold24 ?? this.neu8Bold24,
      neu6Medi10: neu6Medi10 ?? this.neu6Medi10,
      neu6Medi11: neu6Medi11 ?? this.neu6Medi11,
      neu6Medi12: neu6Medi12 ?? this.neu6Medi12,
      neu6Medi14: neu6Medi14 ?? this.neu6Medi14,
      neu6Medi16: neu6Medi16 ?? this.neu6Medi16,
      neu6Medi18: neu6Medi18 ?? this.neu6Medi18,
      neu6Medi20: neu6Medi20 ?? this.neu6Medi20,
      neu6Medi24: neu6Medi24 ?? this.neu6Medi24,
      neu6Regu10: neu6Regu10 ?? this.neu6Regu10,
      neu6Regu11: neu6Regu11 ?? this.neu6Regu11,
      neu6Regu12: neu6Regu12 ?? this.neu6Regu12,
      neu6Regu14: neu6Regu14 ?? this.neu6Regu14,
      neu6Regu16: neu6Regu16 ?? this.neu6Regu16,
      neu6Regu18: neu6Regu18 ?? this.neu6Regu18,
      neu6Regu20: neu6Regu20 ?? this.neu6Regu20,
      neu6Regu24: neu6Regu24 ?? this.neu6Regu24,
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
      neu8Medi10: TextStyle.lerp(neu8Medi10, other.neu8Medi10, t),
      neu8Medi11: TextStyle.lerp(neu8Medi11, other.neu8Medi11, t),
      neu8Medi12: TextStyle.lerp(neu8Medi12, other.neu8Medi12, t),
      neu8Medi14: TextStyle.lerp(neu8Medi14, other.neu8Medi14, t),
      neu8Medi16: TextStyle.lerp(neu8Medi16, other.neu8Medi16, t),
      neu8Medi18: TextStyle.lerp(neu8Medi18, other.neu8Medi18, t),
      neu8Medi20: TextStyle.lerp(neu8Medi20, other.neu8Medi20, t),
      neu8Medi24: TextStyle.lerp(neu8Medi24, other.neu8Medi24, t),
      neu8Regu10: TextStyle.lerp(neu8Regu10, other.neu8Regu10, t),
      neu8Regu11: TextStyle.lerp(neu8Regu11, other.neu8Regu11, t),
      neu8Regu12: TextStyle.lerp(neu8Regu12, other.neu8Regu12, t),
      neu8Regu14: TextStyle.lerp(neu8Regu14, other.neu8Regu14, t),
      neu8Regu16: TextStyle.lerp(neu8Regu16, other.neu8Regu16, t),
      neu8Regu18: TextStyle.lerp(neu8Regu18, other.neu8Regu18, t),
      neu8Regu20: TextStyle.lerp(neu8Regu20, other.neu8Regu20, t),
      neu8Regu24: TextStyle.lerp(neu8Regu24, other.neu8Regu24, t),
      neu8Bold10: TextStyle.lerp(neu8Bold10, other.neu8Bold10, t),
      neu8Bold11: TextStyle.lerp(neu8Bold11, other.neu8Bold11, t),
      neu8Bold12: TextStyle.lerp(neu8Bold12, other.neu8Bold12, t),
      neu8Bold14: TextStyle.lerp(neu8Bold14, other.neu8Bold14, t),
      neu8Bold16: TextStyle.lerp(neu8Bold16, other.neu8Bold16, t),
      neu8Bold18: TextStyle.lerp(neu8Bold18, other.neu8Bold18, t),
      neu8Bold20: TextStyle.lerp(neu8Bold20, other.neu8Bold20, t),
      neu8Bold24: TextStyle.lerp(neu8Bold24, other.neu8Bold24, t),
      neu6Medi10: TextStyle.lerp(neu6Medi10, other.neu6Medi10, t),
      neu6Medi11: TextStyle.lerp(neu6Medi11, other.neu6Medi11, t),
      neu6Medi12: TextStyle.lerp(neu6Medi12, other.neu6Medi12, t),
      neu6Medi14: TextStyle.lerp(neu6Medi14, other.neu6Medi14, t),
      neu6Medi16: TextStyle.lerp(neu6Medi16, other.neu6Medi16, t),
      neu6Medi18: TextStyle.lerp(neu6Medi18, other.neu6Medi18, t),
      neu6Medi20: TextStyle.lerp(neu6Medi20, other.neu6Medi20, t),
      neu6Medi24: TextStyle.lerp(neu6Medi24, other.neu6Medi24, t),
      neu6Regu10: TextStyle.lerp(neu6Regu10, other.neu6Regu10, t),
      neu6Regu11: TextStyle.lerp(neu6Regu11, other.neu6Regu11, t),
      neu6Regu12: TextStyle.lerp(neu6Regu12, other.neu6Regu12, t),
      neu6Regu14: TextStyle.lerp(neu6Regu14, other.neu6Regu14, t),
      neu6Regu16: TextStyle.lerp(neu6Regu16, other.neu6Regu16, t),
      neu6Regu18: TextStyle.lerp(neu6Regu18, other.neu6Regu18, t),
      neu6Regu20: TextStyle.lerp(neu6Regu20, other.neu6Regu20, t),
      neu6Regu24: TextStyle.lerp(neu6Regu24, other.neu6Regu24, t),
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
