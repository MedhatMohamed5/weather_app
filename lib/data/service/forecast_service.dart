import 'package:dio/dio.dart';
import 'package:weather_app/data/datasource/network_api.dart';

class ForecastService {
  final NetworkAPI _networkAPI = NetworkAPI();

  static final ForecastService _forecastService = ForecastService._internal();

  factory ForecastService() {
    return _forecastService;
  }

  ForecastService._internal();

  Future<Response> getForecast({
    String? query,
    int? numberOfDays,
    bool? getAirQuality,
    String? lang,
  }) async {
    Response response;

    response =
        await _networkAPI.getFromAPI(path: _networkAPI.forecastUrl, params: {
      'q': query,
      'days': numberOfDays ?? 1,
      'aqi': getAirQuality != null
          ? getAirQuality
              ? 'yes'
              : 'no'
          : 'no',
      'lang': lang ?? ''
    });

    return response;
  }
}
