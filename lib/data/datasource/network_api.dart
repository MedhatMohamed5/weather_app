import 'package:dio/dio.dart';

class NetworkAPI {
  static String baseUrl = 'https://api.weatherapi.com/v1';
  String forecastUrl = '/forecast.json';
  final _apiKey = '8cc32fe89a1947e393e203005220903';

  static final NetworkAPI _networkAPI = NetworkAPI._internal();

  factory NetworkAPI() {
    return _networkAPI;
  }

  NetworkAPI._internal();

  Future<Response> getFromAPI({
    String? path,
    Map<String, dynamic>? params,
  }) async {
    Dio dioObject = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        contentType: 'application/json',
      ),
    );
    Response response;

    try {
      if (params == null) {
        params = {'key': _apiKey};
      } else {
        params.addAll({'key': _apiKey});
      }
      response = await dioObject.get(path ?? "", queryParameters: params);
    } on DioError catch (e) {
      response = e.response!;
    }
    return response;
  }
}
