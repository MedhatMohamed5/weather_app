import 'package:weather_app/data/models/forecast/current_weather.dart';
import 'package:weather_app/data/models/forecast/forecast_model.dart';
import 'package:weather_app/data/models/forecast/location_model.dart';
import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';

class ForecastResponseModel extends ForecastResponseEntity {
  ForecastResponseModel({
    Location? location,
    CurrentWeather? current,
    ForecastModel? forecast,
    String? message,
  }) : super(
          current: current,
          forecast: forecast,
          location: location,
          message: message,
        );

  factory ForecastResponseModel.fromJson(Map<String, dynamic> json,
          {String? message}) =>
      ForecastResponseModel(
        message: message ?? '',
        location: json['location'] != null
            ? Location.fromJson(json['location'])
            : null,
        current: json['current'] != null
            ? CurrentWeather.fromJson(json['current'])
            : null,
        forecast: json['forecast'] != null
            ? ForecastModel.fromJson(json['forecast'])
            : null,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = (location as Location).toJson();
    }
    if (current != null) {
      data['current'] = (current as CurrentWeather).toJson();
    }
    if (forecast != null) {
      data['forecast'] = (forecast as ForecastModel).toJson();
    }
    return data;
  }
}
