import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  final String? apiKey = dotenv.env['API_KEY'];

  final LocationData location = await getLocation();

  final double? lat = location.latitude;
  final double? lon = location.longitude;

  const String baseUrl =
      'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services';

  const String unit = "metric";

  final http.Response response = await http.get(
      '$baseUrl/timeline/$lat,$lon?unitGroup=$unit&include=hours%2Ccurrent&key=$apiKey&contentType=json');
}
