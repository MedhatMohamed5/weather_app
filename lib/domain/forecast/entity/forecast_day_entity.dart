import 'package:weather_app/domain/forecast/entity/astro.dart';
import 'package:weather_app/domain/forecast/entity/day_entity.dart';
import 'package:weather_app/domain/forecast/entity/hour_entity.dart';

class ForecastDayEntity {
  String? date;
  num? dateEpoch;
  DayEntity? day;
  AstroEntity? astro;
  List<HourEntity>? hour;

  ForecastDayEntity({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });
}
