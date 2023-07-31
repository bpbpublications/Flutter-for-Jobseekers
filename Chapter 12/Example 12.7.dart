import 'package:http/http.dart' as http;

Future<void> main() async {
  final http.Response response = await http.get('https://my-api');
  CurrentWeather? weather;
  if (response.statusCode == 200 && response.data != null) {
    weather = CurrentWeather.fromJson(response.data);
  }
  return weather;
}
