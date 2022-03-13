import 'package:weather_app/domain/forecast/entity/air_quality_entity.dart';

class AirQuality extends AirQualityEntity {
  AirQuality({
    num? co,
    num? no2,
    num? o3,
    num? so2,
    num? pm25,
    num? pm10,
    num? usEpaIndex,
    num? gbDefraIndex,
  }) : super(
          co: co,
          no2: no2,
          o3: o3,
          so2: so2,
          pm10: pm10,
          pm25: pm25,
          usEpaIndex: usEpaIndex,
          gbDefraIndex: gbDefraIndex,
        );

  // @override
  factory AirQuality.fromJson(Map<String, dynamic> json) => AirQuality(
        co: json['co'],
        no2: json['no2'],
        o3: json['o3'],
        so2: json['so2'],
        pm10: json['pm10'],
        pm25: json['pm2_5'],
        usEpaIndex: json['us-epa-index'],
        gbDefraIndex: json['gb-defra-index'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['co'] = co;
    data['no2'] = no2;
    data['o3'] = o3;
    data['so2'] = so2;
    data['pm2_5'] = pm25;
    data['pm10'] = pm10;
    data['us-epa-index'] = usEpaIndex;
    data['gb-defra-index'] = gbDefraIndex;
    return data;
  }
}
