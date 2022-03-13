import 'package:weather_app/data/models/forecast/condition.dart';
import 'package:weather_app/domain/forecast/entity/day_entity.dart';

class DayModel extends DayEntity {
  DayModel({
    num? maxtempC,
    num? maxtempF,
    num? mintempC,
    num? mintempF,
    num? avgtempC,
    num? avgtempF,
    num? maxwindMph,
    num? maxwindKph,
    num? totalprecipMm,
    num? totalprecipIn,
    num? avgvisKm,
    num? avgvisMiles,
    num? avghumidity,
    num? dailyWillItRain,
    num? dailyChanceOfRain,
    num? dailyWillItSnow,
    num? dailyChanceOfSnow,
    Condition? condition,
    num? uv,
  }) : super(
          maxtempC: maxtempC,
          maxtempF: maxtempF,
          mintempC: mintempC,
          mintempF: mintempF,
          avgtempC: avgtempC,
          avgtempF: avgtempF,
          maxwindMph: maxwindMph,
          maxwindKph: maxwindKph,
          totalprecipIn: totalprecipIn,
          totalprecipMm: totalprecipMm,
          avgvisKm: avgvisKm,
          avgvisMiles: avgvisMiles,
          avghumidity: avghumidity,
          dailyWillItRain: dailyWillItRain,
          dailyChanceOfRain: dailyChanceOfRain,
          dailyWillItSnow: dailyWillItSnow,
          dailyChanceOfSnow: dailyChanceOfSnow,
          condition: condition,
          uv: uv,
        );

  factory DayModel.fromJson(Map<String, dynamic> json) => DayModel(
        maxtempC: json['maxtemp_c'],
        maxtempF: json['maxtemp_f'],
        mintempC: json['mintemp_c'],
        mintempF: json['mintemp_f'],
        avgtempC: json['avgtemp_c'],
        avgtempF: json['avgtemp_f'],
        maxwindMph: json['maxwind_mph'],
        maxwindKph: json['maxwind_kph'],
        totalprecipMm: json['totalprecip_mm'],
        totalprecipIn: json['totalprecip_in'],
        avgvisKm: json['avgvis_km'],
        avgvisMiles: json['avgvis_miles'],
        avghumidity: json['avghumidity'],
        dailyWillItRain: json['daily_will_it_rain'],
        dailyChanceOfRain: json['daily_chance_of_rain'],
        dailyWillItSnow: json['daily_will_it_snow'],
        dailyChanceOfSnow: json['daily_chance_of_snow'],
        condition: json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
        uv: json['uv'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['maxtemp_c'] = maxtempC;
    data['maxtemp_f'] = maxtempF;
    data['mintemp_c'] = mintempC;
    data['mintemp_f'] = mintempF;
    data['avgtemp_c'] = avgtempC;
    data['avgtemp_f'] = avgtempF;
    data['maxwind_mph'] = maxwindMph;
    data['maxwind_kph'] = maxwindKph;
    data['totalprecip_mm'] = totalprecipMm;
    data['totalprecip_in'] = totalprecipIn;
    data['avgvis_km'] = avgvisKm;
    data['avgvis_miles'] = avgvisMiles;
    data['avghumidity'] = avghumidity;
    data['daily_will_it_rain'] = dailyWillItRain;
    data['daily_chance_of_rain'] = dailyChanceOfRain;
    data['daily_will_it_snow'] = dailyWillItSnow;
    data['daily_chance_of_snow'] = dailyChanceOfSnow;
    if (condition != null) {
      data['condition'] = (condition as Condition).toJson();
    }
    data['uv'] = uv;
    return data;
  }
}
