import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';

abstract class ForecastState {}

class ForecastInitState extends ForecastState {}

class ForecastLoadingState extends ForecastState {}

class ForecastSuccessState extends ForecastState {
  final ForecastResponseEntity forecastResponseEntity;

  ForecastSuccessState(this.forecastResponseEntity);
}

class ForecastErrorState extends ForecastState {
  final String? message;

  ForecastErrorState(this.message);
}
