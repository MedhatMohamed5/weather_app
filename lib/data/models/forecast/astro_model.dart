import 'package:weather_app/domain/forecast/entity/astro.dart';

class AstroModel extends AstroEntity {
  AstroModel({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    String? moonIllumination,
  }) : super(
          sunrise: sunrise,
          sunset: sunset,
          moonrise: moonrise,
          moonset: moonset,
          moonPhase: moonPhase,
          moonIllumination: moonIllumination,
        );

  factory AstroModel.fromJson(Map<String, dynamic> json) => AstroModel(
        sunrise: json['sunrise'],
        sunset: json['sunset'],
        moonrise: json['moonrise'],
        moonset: json['moonset'],
        moonPhase: json['moon_phase'],
        moonIllumination: json['moon_illumination'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['moon_phase'] = moonPhase;
    data['moon_illumination'] = moonIllumination;
    return data;
  }
}
