import 'package:weather_app/data/models/forecast/astro_model.dart';
import 'package:weather_app/data/models/forecast/day_model.dart';
import 'package:weather_app/data/models/forecast/hour.dart';
import 'package:weather_app/domain/forecast/entity/forecast_day_entity.dart';

class ForecastDay extends ForecastDayEntity {
  ForecastDay({
    String? date,
    num? dateEpoch,
    DayModel? day,
    AstroModel? astro,
    List<HourModel>? hour,
  }) : super(
          astro: astro,
          date: date,
          dateEpoch: dateEpoch,
          day: day,
          hour: hour,
        );

  factory ForecastDay.fromJson(Map<String, dynamic> json) => ForecastDay(
        date: json['date'],
        dateEpoch: json['date_epoch'],
        day: json['day'] != null ? DayModel.fromJson(json['day']) : null,
        astro:
            json['astro'] != null ? AstroModel.fromJson(json['astro']) : null,
        hour: json['hour'] != null
            ? (json['hour'] as List<dynamic>)
                .map((e) => HourModel.fromJson(e))
                .toList()
            : <HourModel>[],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['date_epoch'] = dateEpoch;
    if (day != null) {
      data['day'] = (day as DayModel).toJson();
    }
    if (astro != null) {
      data['astro'] = (astro as AstroModel).toJson();
    }
    if (hour != null) {
      data['hour'] = hour!.map((v) => (v as HourModel).toJson()).toList();
    }
    return data;
  }
}
