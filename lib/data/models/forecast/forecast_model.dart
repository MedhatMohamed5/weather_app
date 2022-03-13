import 'package:weather_app/data/models/forecast/forecast_day.dart';
import 'package:weather_app/domain/forecast/entity/forecast_entity.dart';

class ForecastModel extends ForecastEntity {
  ForecastModel({List<ForecastDay>? forecastDay})
      : super(forecastday: forecastDay);

  factory ForecastModel.fromJson(Map<String, dynamic> json) => ForecastModel(
        forecastDay: json['forecastday'] != null
            ? (json['forecastday'] as List<dynamic>)
                .map((x) => ForecastDay.fromJson(x))
                .toList()
            : <ForecastDay>[],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (forecastday != null) {
      data['forecastday'] =
          forecastday!.map((v) => (v as ForecastDay).toJson()).toList();
    }
    return data;
  }
}
