import 'package:dio/dio.dart';
import 'package:weather_app/data/models/forecast/forecast_response_model.dart';
import 'package:weather_app/data/service/forecast_service.dart';
import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';
import 'package:weather_app/domain/forecast/repos_interfaces/forecast_repo_interface.dart';

class ForecastRepository implements IForecastRepository {
  final ForecastService _forecastService = ForecastService();
  @override
  Future<ForecastResponseEntity> getForecastTwoDays() async {
    try {
      Response response = await _forecastService.getForecast(
          query: 'Cairo', numberOfDays: 2, getAirQuality: true, lang: 'en');

      if (response.statusCode == 200) {
        return ForecastResponseModel.fromJson(response.data,
            message: response.statusMessage);
      } else {
        return ForecastResponseModel(message: response.statusMessage);
      }
    } catch (e) {
      return ForecastResponseModel(message: e.toString());
    }
  }
}
