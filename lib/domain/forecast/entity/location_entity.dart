class LocationEntity {
  // LocationEntity fromJson(Map<String, dynamic> json) => LocationEntity();

  final String? name;
  final String? region;
  final String? country;
  final num? lat;
  final num? lon;
  final String? tzId;
  final num? localtimeEpoch;
  final String? localtime;

  LocationEntity({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  // Map<String, dynamic> toJson() => <String, dynamic>{};
}
