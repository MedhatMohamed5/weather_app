import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/forecast/business/forecast_business.dart';
import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';
import 'package:weather_app/injector.dart';
import 'package:weather_app/presentation/features/forecast/bloc/forecast_state.dart';

class ForecastCubit extends Cubit<ForecastState> {
  ForecastCubit() : super(ForecastInitState());

  late ForecastBusiness _business;

  void init() async {
    _business = ForecastBusiness(getIt());
    await getForecastTwoDaysData();
  }

  Future<void> getForecastTwoDaysData() async {
    ForecastResponseEntity responseEntity =
        await _business.getForecastTwoDays();

    if (responseEntity.message == "OK") {
      emit(ForecastSuccessState(responseEntity));
    } else {
      emit(ForecastErrorState(responseEntity.message));
    }
  }
}
