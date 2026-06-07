part of 'entities.dart';

class AppLimitConfig {
  final String? package;
  final String? limitMinutes;
  final bool? applyAllDays;
  final bool? applyWeekendOnly;

  AppLimitConfig(
      {this.package,
      this.limitMinutes,
      this.applyAllDays,
      this.applyWeekendOnly});

  Map<String, dynamic> toJson() {
    return {
      "package": package,
      "limitMinutes": limitMinutes,
      "applyAllDays": applyAllDays,
      "applyWeekendOnly": applyWeekendOnly,
    };
  }
}
