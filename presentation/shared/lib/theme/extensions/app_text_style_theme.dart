import 'package:flutter/material.dart';

class AppTextStyleTheme extends ThemeExtension<AppTextStyleTheme> {
  ///cat8
  final TextStyle? cat8Medi10;
  final TextStyle? cat8Medi11;
  final TextStyle? cat8Medi12;
  final TextStyle? cat8Medi14;
  final TextStyle? cat8Medi16;
  final TextStyle? cat8Medi18;
  final TextStyle? cat8Medi20;
  final TextStyle? cat8Medi24;
  final TextStyle? cat8Regu10;
  final TextStyle? cat8Regu11;
  final TextStyle? cat8Regu12;
  final TextStyle? cat8Regu14;
  final TextStyle? cat8Regu16;
  final TextStyle? cat8Regu18;
  final TextStyle? cat8Regu20;
  final TextStyle? cat8Regu24;
  final TextStyle? cat8Bold10;
  final TextStyle? cat8Bold11;
  final TextStyle? cat8Bold12;
  final TextStyle? cat8Bold14;
  final TextStyle? cat8Bold16;
  final TextStyle? cat8Bold18;
  final TextStyle? cat8Bold20;
  final TextStyle? cat8Bold24;

  ///cat6
  final TextStyle? cat6Medi10;
  final TextStyle? cat6Medi11;
  final TextStyle? cat6Medi12;
  final TextStyle? cat6Medi14;
  final TextStyle? cat6Medi16;
  final TextStyle? cat6Medi18;
  final TextStyle? cat6Medi20;
  final TextStyle? cat6Medi24;
  final TextStyle? cat6Regu10;
  final TextStyle? cat6Regu11;
  final TextStyle? cat6Regu12;
  final TextStyle? cat6Regu14;
  final TextStyle? cat6Regu16;
  final TextStyle? cat6Regu18;
  final TextStyle? cat6Regu20;
  final TextStyle? cat6Regu24;

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
    this.cat8Medi10,
    this.cat8Medi11,
    this.cat8Medi12,
    this.cat8Medi14,
    this.cat8Medi16,
    this.cat8Medi18,
    this.cat8Medi20,
    this.cat8Medi24,
    this.cat8Regu10,
    this.cat8Regu11,
    this.cat8Regu12,
    this.cat8Regu14,
    this.cat8Regu16,
    this.cat8Regu18,
    this.cat8Regu20,
    this.cat8Regu24,
    this.cat8Bold10,
    this.cat8Bold11,
    this.cat8Bold12,
    this.cat8Bold14,
    this.cat8Bold16,
    this.cat8Bold18,
    this.cat8Bold20,
    this.cat8Bold24,
    this.cat6Medi10,
    this.cat6Medi11,
    this.cat6Medi12,
    this.cat6Medi14,
    this.cat6Medi16,
    this.cat6Medi18,
    this.cat6Medi20,
    this.cat6Medi24,
    this.cat6Regu10,
    this.cat6Regu11,
    this.cat6Regu12,
    this.cat6Regu14,
    this.cat6Regu16,
    this.cat6Regu18,
    this.cat6Regu20,
    this.cat6Regu24,
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
    TextStyle? cat8Medi10,
    TextStyle? cat8Medi11,
    TextStyle? cat8Medi12,
    TextStyle? cat8Medi14,
    TextStyle? cat8Medi16,
    TextStyle? cat8Medi18,
    TextStyle? cat8Medi20,
    TextStyle? cat8Medi24,
    TextStyle? cat8Regu10,
    TextStyle? cat8Regu11,
    TextStyle? cat8Regu12,
    TextStyle? cat8Regu14,
    TextStyle? cat8Regu16,
    TextStyle? cat8Regu18,
    TextStyle? cat8Regu20,
    TextStyle? cat8Regu24,
    TextStyle? cat8Bold10,
    TextStyle? cat8Bold11,
    TextStyle? cat8Bold12,
    TextStyle? cat8Bold14,
    TextStyle? cat8Bold16,
    TextStyle? cat8Bold18,
    TextStyle? cat8Bold20,
    TextStyle? cat8Bold24,
    TextStyle? cat6Medi10,
    TextStyle? cat6Medi11,
    TextStyle? cat6Medi12,
    TextStyle? cat6Medi14,
    TextStyle? cat6Medi16,
    TextStyle? cat6Medi18,
    TextStyle? cat6Medi20,
    TextStyle? cat6Medi24,
    TextStyle? cat6Regu10,
    TextStyle? cat6Regu11,
    TextStyle? cat6Regu12,
    TextStyle? cat6Regu14,
    TextStyle? cat6Regu16,
    TextStyle? cat6Regu18,
    TextStyle? cat6Regu20,
    TextStyle? cat6Regu24,
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
      cat8Medi10: cat8Medi10 ?? this.cat8Medi10,
      cat8Medi11: cat8Medi11 ?? this.cat8Medi11,
      cat8Medi12: cat8Medi12 ?? this.cat8Medi12,
      cat8Medi14: cat8Medi14 ?? this.cat8Medi14,
      cat8Medi16: cat8Medi16 ?? this.cat8Medi16,
      cat8Medi18: cat8Medi18 ?? this.cat8Medi18,
      cat8Medi20: cat8Medi20 ?? this.cat8Medi20,
      cat8Medi24: cat8Medi24 ?? this.cat8Medi24,
      cat8Regu10: cat8Regu10 ?? this.cat8Regu10,
      cat8Regu11: cat8Regu11 ?? this.cat8Regu11,
      cat8Regu12: cat8Regu12 ?? this.cat8Regu12,
      cat8Regu14: cat8Regu14 ?? this.cat8Regu14,
      cat8Regu16: cat8Regu16 ?? this.cat8Regu16,
      cat8Regu18: cat8Regu18 ?? this.cat8Regu18,
      cat8Regu20: cat8Regu20 ?? this.cat8Regu20,
      cat8Regu24: cat8Regu24 ?? this.cat8Regu24,
      cat8Bold10: cat8Bold10 ?? this.cat8Bold10,
      cat8Bold11: cat8Bold11 ?? this.cat8Bold11,
      cat8Bold12: cat8Bold12 ?? this.cat8Bold12,
      cat8Bold14: cat8Bold14 ?? this.cat8Bold14,
      cat8Bold16: cat8Bold16 ?? this.cat8Bold16,
      cat8Bold18: cat8Bold18 ?? this.cat8Bold18,
      cat8Bold20: cat8Bold20 ?? this.cat8Bold20,
      cat8Bold24: cat8Bold24 ?? this.cat8Bold24,
      cat6Medi10: cat6Medi10 ?? this.cat6Medi10,
      cat6Medi11: cat6Medi11 ?? this.cat6Medi11,
      cat6Medi12: cat6Medi12 ?? this.cat6Medi12,
      cat6Medi14: cat6Medi14 ?? this.cat6Medi14,
      cat6Medi16: cat6Medi16 ?? this.cat6Medi16,
      cat6Medi18: cat6Medi18 ?? this.cat6Medi18,
      cat6Medi20: cat6Medi20 ?? this.cat6Medi20,
      cat6Medi24: cat6Medi24 ?? this.cat6Medi24,
      cat6Regu10: cat6Regu10 ?? this.cat6Regu10,
      cat6Regu11: cat6Regu11 ?? this.cat6Regu11,
      cat6Regu12: cat6Regu12 ?? this.cat6Regu12,
      cat6Regu14: cat6Regu14 ?? this.cat6Regu14,
      cat6Regu16: cat6Regu16 ?? this.cat6Regu16,
      cat6Regu18: cat6Regu18 ?? this.cat6Regu18,
      cat6Regu20: cat6Regu20 ?? this.cat6Regu20,
      cat6Regu24: cat6Regu24 ?? this.cat6Regu24,
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
      cat8Medi10: TextStyle.lerp(cat8Medi10, other.cat8Medi10, t),
      cat8Medi11: TextStyle.lerp(cat8Medi11, other.cat8Medi11, t),
      cat8Medi12: TextStyle.lerp(cat8Medi12, other.cat8Medi12, t),
      cat8Medi14: TextStyle.lerp(cat8Medi14, other.cat8Medi14, t),
      cat8Medi16: TextStyle.lerp(cat8Medi16, other.cat8Medi16, t),
      cat8Medi18: TextStyle.lerp(cat8Medi18, other.cat8Medi18, t),
      cat8Medi20: TextStyle.lerp(cat8Medi20, other.cat8Medi20, t),
      cat8Medi24: TextStyle.lerp(cat8Medi24, other.cat8Medi24, t),
      cat8Regu10: TextStyle.lerp(cat8Regu10, other.cat8Regu10, t),
      cat8Regu11: TextStyle.lerp(cat8Regu11, other.cat8Regu11, t),
      cat8Regu12: TextStyle.lerp(cat8Regu12, other.cat8Regu12, t),
      cat8Regu14: TextStyle.lerp(cat8Regu14, other.cat8Regu14, t),
      cat8Regu16: TextStyle.lerp(cat8Regu16, other.cat8Regu16, t),
      cat8Regu18: TextStyle.lerp(cat8Regu18, other.cat8Regu18, t),
      cat8Regu20: TextStyle.lerp(cat8Regu20, other.cat8Regu20, t),
      cat8Regu24: TextStyle.lerp(cat8Regu24, other.cat8Regu24, t),
      cat8Bold10: TextStyle.lerp(cat8Bold10, other.cat8Bold10, t),
      cat8Bold11: TextStyle.lerp(cat8Bold11, other.cat8Bold11, t),
      cat8Bold12: TextStyle.lerp(cat8Bold12, other.cat8Bold12, t),
      cat8Bold14: TextStyle.lerp(cat8Bold14, other.cat8Bold14, t),
      cat8Bold16: TextStyle.lerp(cat8Bold16, other.cat8Bold16, t),
      cat8Bold18: TextStyle.lerp(cat8Bold18, other.cat8Bold18, t),
      cat8Bold20: TextStyle.lerp(cat8Bold20, other.cat8Bold20, t),
      cat8Bold24: TextStyle.lerp(cat8Bold24, other.cat8Bold24, t),
      cat6Medi10: TextStyle.lerp(cat6Medi10, other.cat6Medi10, t),
      cat6Medi11: TextStyle.lerp(cat6Medi11, other.cat6Medi11, t),
      cat6Medi12: TextStyle.lerp(cat6Medi12, other.cat6Medi12, t),
      cat6Medi14: TextStyle.lerp(cat6Medi14, other.cat6Medi14, t),
      cat6Medi16: TextStyle.lerp(cat6Medi16, other.cat6Medi16, t),
      cat6Medi18: TextStyle.lerp(cat6Medi18, other.cat6Medi18, t),
      cat6Medi20: TextStyle.lerp(cat6Medi20, other.cat6Medi20, t),
      cat6Medi24: TextStyle.lerp(cat6Medi24, other.cat6Medi24, t),
      cat6Regu10: TextStyle.lerp(cat6Regu10, other.cat6Regu10, t),
      cat6Regu11: TextStyle.lerp(cat6Regu11, other.cat6Regu11, t),
      cat6Regu12: TextStyle.lerp(cat6Regu12, other.cat6Regu12, t),
      cat6Regu14: TextStyle.lerp(cat6Regu14, other.cat6Regu14, t),
      cat6Regu16: TextStyle.lerp(cat6Regu16, other.cat6Regu16, t),
      cat6Regu18: TextStyle.lerp(cat6Regu18, other.cat6Regu18, t),
      cat6Regu20: TextStyle.lerp(cat6Regu20, other.cat6Regu20, t),
      cat6Regu24: TextStyle.lerp(cat6Regu24, other.cat6Regu24, t),
      primaryMedi12: TextStyle.lerp(primaryMedi12, other.primaryMedi12, t),
      primaryMedi14: TextStyle.lerp(primaryMedi14, other.primaryMedi14, t),
      primaryMedi16: TextStyle.lerp(primaryMedi16, other.primaryMedi16, t),
      primaryRegu12: TextStyle.lerp(primaryRegu12, other.primaryRegu12, t),
      primaryRegu14: TextStyle.lerp(primaryRegu14, other.primaryRegu14, t),
      primaryRegu16: TextStyle.lerp(primaryRegu16, other.primaryRegu16, t),
      onPrimaryMedi12: TextStyle.lerp(onPrimaryMedi12, other.onPrimaryMedi12, t),
      onPrimaryMedi14: TextStyle.lerp(onPrimaryMedi14, other.onPrimaryMedi14, t),
      onPrimaryMedi16: TextStyle.lerp(onPrimaryMedi16, other.onPrimaryMedi16, t),
      onPrimaryRegu12: TextStyle.lerp(onPrimaryRegu12, other.onPrimaryRegu12, t),
      onPrimaryRegu14: TextStyle.lerp(onPrimaryRegu14, other.onPrimaryRegu14, t),
      onPrimaryRegu16: TextStyle.lerp(onPrimaryRegu16, other.onPrimaryRegu16, t),
    );
  }
}
