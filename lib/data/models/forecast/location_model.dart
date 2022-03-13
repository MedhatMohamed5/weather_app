import 'package:weather_app/domain/forecast/entity/location_entity.dart';

class Location extends LocationEntity {
  Location({
    String? name,
    String? region,
    String? country,
    num? lat,
    num? lon,
    String? tzId,
    num? localtimeEpoch,
    String? localtime,
  }) : super(
          name: name,
          region: region,
          country: country,
          lat: lat,
          lon: lon,
          tzId: tzId,
          localtimeEpoch: localtimeEpoch,
          localtime: localtime,
        );

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'],
        region: json['region'],
        country: json['country'],
        lat: json['lat'],
        lon: json['lon'],
        tzId: json['tz_id'],
        localtimeEpoch: json['localtime_epoch'],
        localtime: json['localtime'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['region'] = region;
    data['country'] = country;
    data['lat'] = lat;
    data['lon'] = lon;
    data['tz_id'] = tzId;
    data['localtime_epoch'] = localtimeEpoch;
    data['localtime'] = localtime;
    return data;
  }
}
