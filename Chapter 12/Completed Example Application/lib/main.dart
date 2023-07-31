import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather/features/home/screens/home_screen.dart';
import 'package:weather/features/settings/bloc/settings_bloc.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';
import 'package:weather/theme.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(),
        ),
        BlocProvider<SettingsBloc>(
          create: (context) => SettingsBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Weather',
        theme: theme,
        home: const HomeScreen(),
      ),
    );
  }
}
