import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/repository/forecast/forecast_repo.dart';
import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';
import 'dart:developer';

void main() {
  test(
    'Test ForecastRepo',
    () async {
      ForecastRepository repository = ForecastRepository();
      ForecastResponseEntity responseEntity =
          await repository.getForecastTwoDays();
      log(responseEntity.message!);
    },
  );
}
