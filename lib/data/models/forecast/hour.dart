import 'package:weather_app/data/models/forecast/condition.dart';
import 'package:weather_app/domain/forecast/entity/hour_entity.dart';

class HourModel extends HourEntity {
  HourModel({
    final num? timeEpoch,
    final String? time,
    final num? tempC,
    final num? tempF,
    final num? isDay,
    final Condition? condition,
    final num? windMph,
    final num? windKph,
    final num? windDegree,
    final String? windDir,
    final num? pressureMb,
    final num? pressureIn,
    final num? precipMm,
    final num? precipIn,
    final num? humidity,
    final num? cloud,
    final num? feelslikeC,
    final num? feelslikeF,
    final num? windchillC,
    final num? windchillF,
    final num? heatindexC,
    final num? heatindexF,
    final num? dewpointC,
    final num? dewpointF,
    final num? willItRain,
    final num? chanceOfRain,
    final num? willItSnow,
    final num? chanceOfSnow,
    final num? visKm,
    final num? visMiles,
    final num? gustMph,
    final num? gustKph,
    final num? uv,
  }) : super(
          chanceOfRain: chanceOfRain,
          chanceOfSnow: chanceOfSnow,
          cloud: cloud,
          condition: condition,
          dewpointC: dewpointC,
          dewpointF: dewpointF,
          feelslikeC: feelslikeC,
          feelslikeF: feelslikeF,
          gustKph: gustKph,
          gustMph: gustMph,
          heatindexC: heatindexC,
          heatindexF: heatindexF,
          humidity: humidity,
          isDay: isDay,
          precipIn: precipIn,
          precipMm: precipMm,
          pressureIn: pressureIn,
          pressureMb: pressureMb,
          tempC: tempC,
          tempF: tempF,
          time: time,
          timeEpoch: timeEpoch,
          uv: uv,
          visKm: visKm,
          visMiles: visMiles,
          willItRain: willItRain,
          willItSnow: willItSnow,
          windDegree: windDegree,
          windDir: windDir,
          windKph: windKph,
          windMph: windMph,
          windchillC: windchillC,
          windchillF: windchillF,
        );

  factory HourModel.fromJson(Map<String, dynamic> json) => HourModel(
        timeEpoch: json['time_epoch'],
        time: json['time'],
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
        windchillC: json['windchill_c'],
        windchillF: json['windchill_f'],
        heatindexC: json['heatindex_c'],
        heatindexF: json['heatindex_f'],
        dewpointC: json['dewpoint_c'],
        dewpointF: json['dewpoint_f'],
        willItRain: json['will_it_rain'],
        chanceOfRain: json['chance_of_rain'],
        willItSnow: json['will_it_snow'],
        chanceOfSnow: json['chance_of_snow'],
        visKm: json['vis_km'],
        visMiles: json['vis_miles'],
        gustMph: json['gust_mph'],
        gustKph: json['gust_kph'],
        uv: json['uv'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time_epoch'] = timeEpoch;
    data['time'] = time;
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
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    data['will_it_rain'] = willItRain;
    data['chance_of_rain'] = chanceOfRain;
    data['will_it_snow'] = willItSnow;
    data['chance_of_snow'] = chanceOfSnow;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    data['uv'] = uv;
    return data;
  }
}
