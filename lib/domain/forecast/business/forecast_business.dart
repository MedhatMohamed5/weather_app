import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';
import 'package:weather_app/domain/forecast/repos_interfaces/forecast_repo_interface.dart';

class ForecastBusiness {
  final IForecastRepository _forecastRepository;

  ForecastBusiness(this._forecastRepository);

  Future<ForecastResponseEntity> getForecastTwoDays() async {
    return await _forecastRepository.getForecastTwoDays();
  }
}
