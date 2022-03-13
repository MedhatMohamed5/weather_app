import 'package:weather_app/domain/forecast/entity/condition_entity.dart';

class HourEntity {
  // Map<String, dynamic> toJson() => <String, dynamic>{};

  final num? timeEpoch;
  final String? time;
  final num? tempC;
  final num? tempF;
  final num? isDay;
  final ConditionEntity? condition;
  final num? windMph;
  final num? windKph;
  final num? windDegree;
  final String? windDir;
  final num? pressureMb;
  final num? pressureIn;
  final num? precipMm;
  final num? precipIn;
  final num? humidity;
  final num? cloud;
  final num? feelslikeC;
  final num? feelslikeF;
  final num? windchillC;
  final num? windchillF;
  final num? heatindexC;
  final num? heatindexF;
  final num? dewpointC;
  final num? dewpointF;
  final num? willItRain;
  final num? chanceOfRain;
  final num? willItSnow;
  final num? chanceOfSnow;
  final num? visKm;
  final num? visMiles;
  final num? gustMph;
  final num? gustKph;
  final num? uv;

  HourEntity({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });
}
