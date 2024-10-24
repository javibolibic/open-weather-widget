import 'package:dio/dio.dart';
import 'package:open_weather_widget/weather_model.dart';

class WeatherApiProvider {
  final Dio _dio = Dio();
  String _endpoint = "";

  Future<WeatherModel?> getWeather(
      {required double latitude,
      required double longitude,
      String language = 'en',
      required String apiKey}) async {
    _endpoint =
        "https://api.openweathermap.org/data/3.0/onecall?lat=$latitude&lon=$longitude&exclude=hourly,minutely,alerts&appid=$apiKey&units=metric&lang=$language";
    try {
      Response response = await _dio.get(_endpoint);
      return WeatherModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      // return WeatherModel.withError("$error");
    }
  }
}
