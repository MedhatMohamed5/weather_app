import 'package:weather_app/domain/forecast/entity/condition_entity.dart';

class Condition extends ConditionEntity {
  Condition({
    String? text,
    String? icon,
    num? code,
  }) : super(
          text: text,
          icon: icon,
          code: code,
        );

  // @override
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}
