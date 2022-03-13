import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';

abstract class IForecastRepository {
  Future<ForecastResponseEntity> getForecastTwoDays();
}
