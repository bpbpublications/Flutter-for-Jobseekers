import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  final String? apiKey = dotenv.env['API_KEY'];
  runApp(const MyApp());
}
