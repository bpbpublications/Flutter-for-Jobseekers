import 'package:http/http.dart' as http;

Future<void> main() async {
  try {
    final http.Response response = await http.get('https://my-api');
    final CurrentWeather weather = CurrentWeather.fromJson(response.data);
    return weather;
  } catch (e) {
    throw Exception(e);
  }
}
