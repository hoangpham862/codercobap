part of 'entities.dart';

class AppLimitConfig {
  final String? package;
  final int? limitMinutes;
  final bool? applyAllDays;
  final bool? applyWeekendOnly;
  final bool? isLocked;

  AppLimitConfig(
      {this.package,
      this.limitMinutes,
      this.applyAllDays,
      this.applyWeekendOnly,
      this.isLocked});

  Map<String, dynamic> toJson() {
    return {
      "package": package,
      "limitMinutes": limitMinutes,
      "applyAllDays": applyAllDays,
      "applyWeekendOnly": applyWeekendOnly,
      "isLocked": isLocked,
    };
  }

  factory AppLimitConfig.fromJson(Map<dynamic, dynamic> json) {
    return AppLimitConfig(
        package: json['package'],
        limitMinutes: json['limitMinutes'],
        applyAllDays: json['applyAllDays'],
        applyWeekendOnly: json['applyWeekendOnly'],
        isLocked: json['isLocked']);
  }
}
