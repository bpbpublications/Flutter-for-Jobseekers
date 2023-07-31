import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:location/location.dart';
import 'package:weather/features/weather/classes/current_weather.dart';

const String baseUrl =
    'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services';

final Dio http = Dio();

class WeatherApi {
  const WeatherApi();

  Future<CurrentWeather?> getWeather(
    LocationData location, {
    bool? useMetric,
  }) async {
    final String? apiKey = dotenv.env['API_KEY'];
    final double? lat = location.latitude;
    final double? lon = location.longitude;
    final String unit = (useMetric ?? false) ? 'metric' : 'us';

    CurrentWeather? weather;

    if (lat == null || lon == null || apiKey == null) {
      return weather;
    }

    final String requestString =
        '$baseUrl/timeline/$lat,$lon?unitGroup=$unit&include=hours%2Ccurrent&key=$apiKey&contentType=json';

    final Response response = await http.get(requestString);

    if (response.statusCode == 200 && response.data != null) {
      weather = CurrentWeather.fromJson(response.data);
    }

    return weather;
  }
}
