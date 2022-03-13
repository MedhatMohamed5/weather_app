import 'package:weather_app/data/models/forecast/air_quality.dart';
import 'package:weather_app/data/models/forecast/condition.dart';
import 'package:weather_app/domain/forecast/entity/current_weather_entity.dart';

class CurrentWeather extends CurrentWeatherEntity {
  CurrentWeather({
    num? lastUpdatedEpoch,
    String? lastUpdated,
    num? tempC,
    num? tempF,
    num? isDay,
    Condition? condition,
    num? windMph,
    num? windKph,
    num? windDegree,
    String? windDir,
    num? pressureMb,
    num? pressureIn,
    num? precipMm,
    num? precipIn,
    num? humidity,
    num? cloud,
    num? feelslikeC,
    num? feelslikeF,
    num? visKm,
    num? visMiles,
    num? uv,
    num? gustMph,
    num? gustKph,
    AirQuality? airQuality,
  }) : super(
          airQuality: airQuality,
          cloud: cloud,
          condition: condition,
          feelslikeC: feelslikeC,
          feelslikeF: feelslikeF,
          gustKph: gustKph,
          gustMph: gustMph,
          humidity: humidity,
          isDay: isDay,
          lastUpdated: lastUpdated,
          lastUpdatedEpoch: lastUpdatedEpoch,
          precipIn: precipIn,
          precipMm: precipMm,
          pressureIn: pressureIn,
          pressureMb: pressureMb,
          tempC: tempC,
          tempF: tempF,
          uv: uv,
          visKm: visKm,
          visMiles: visMiles,
          windDegree: windDegree,
          windDir: windDir,
          windKph: windKph,
          windMph: windMph,
        );

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => CurrentWeather(
        lastUpdatedEpoch: json['last_updated_epoch'],
        lastUpdated: json['last_updated'],
        tempC: json['temp_c'],
        tempF: json['temp_f'],
        isDay: json['is_day'],
        condition: json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
        windMph: json['wind_mph'],
        windKph: json['wind_kph'],
        windDegree: json['wind_degree'],
        windDir: json['wind_dir'],
        pressureMb: json['pressure_mb'],
        pressureIn: json['pressure_in'],
        precipMm: json['precip_mm'],
        precipIn: json['precip_in'],
        humidity: json['humidity'],
        cloud: json['cloud'],
        feelslikeC: json['feelslike_c'],
        feelslikeF: json['feelslike_f'],
        visKm: json['vis_km'],
        visMiles: json['vis_miles'],
        uv: json['uv'],
        gustMph: json['gust_mph'],
        gustKph: json['gust_kph'],
        airQuality: json['air_quality'] != null
            ? AirQuality.fromJson(json['air_quality'])
            : null,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['last_updated_epoch'] = lastUpdatedEpoch;
    data['last_updated'] = lastUpdated;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = (condition as Condition).toJson();
    }
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['uv'] = uv;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    if (airQuality != null) {
      data['air_quality'] = (airQuality as AirQuality).toJson();
    }
    return data;
  }
}
