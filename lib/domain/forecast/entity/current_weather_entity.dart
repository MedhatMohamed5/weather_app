import 'package:weather_app/domain/forecast/entity/air_quality_entity.dart';
import 'package:weather_app/domain/forecast/entity/condition_entity.dart';

class CurrentWeatherEntity {
  // ConditionEntity fromJson(Map<String, dynamic> json) => ConditionEntity();

  // Map<String, dynamic> toJson() => <String, dynamic>{};
  final num? lastUpdatedEpoch;
  final String? lastUpdated;
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
  final num? visKm;
  final num? visMiles;
  final num? uv;
  final num? gustMph;
  final num? gustKph;
  final AirQualityEntity? airQuality;

  CurrentWeatherEntity({
    this.lastUpdatedEpoch,
    this.lastUpdated,
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
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
    this.airQuality,
  });
}
