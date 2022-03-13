import 'package:weather_app/domain/forecast/entity/base_entity.dart';
import 'package:weather_app/domain/forecast/entity/current_weather_entity.dart';
import 'package:weather_app/domain/forecast/entity/forecast_entity.dart';
import 'package:weather_app/domain/forecast/entity/location_entity.dart';

class ForecastResponseEntity extends BaseEntity {
  LocationEntity? location;
  CurrentWeatherEntity? current;
  ForecastEntity? forecast;

  ForecastResponseEntity(
      {this.location, this.current, this.forecast, String? message})
      : super(message: message);
}
