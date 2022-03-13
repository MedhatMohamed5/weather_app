import 'package:get_it/get_it.dart';
import 'package:weather_app/data/repository/forecast/forecast_repo.dart';
import 'package:weather_app/domain/forecast/repos_interfaces/forecast_repo_interface.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerFactory<IForecastRepository>(() => ForecastRepository());
}
