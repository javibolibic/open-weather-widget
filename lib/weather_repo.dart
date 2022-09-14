import 'package:open_weather_widget/weather_model.dart';
import 'package:open_weather_widget/weather_provider.dart';

class WeatherRepository {
  WeatherApiProvider _apiProvider = WeatherApiProvider();

  Future<WeatherModel?> getWeather(
      {required double latitude,
      required double longitude,
      String language = 'en',
      required String apiKey}) {
    return _apiProvider.getWeather(
        latitude: latitude,
        longitude: longitude,
        language: language,
        apiKey: apiKey);
  }
}
