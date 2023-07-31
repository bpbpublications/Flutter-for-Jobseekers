import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/home/widgets/current_conditions.dart';
import 'package:weather/features/home/widgets/hourly_weather.dart';
import 'package:weather/features/home/widgets/humidity.dart';
import 'package:weather/features/home/widgets/location_header.dart';
import 'package:weather/features/home/widgets/moon.dart';
import 'package:weather/features/home/widgets/wind.dart';
import 'package:weather/features/settings/bloc/settings_bloc.dart';
import 'package:weather/features/settings/screens/settings_screen.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';
import 'package:weather/features/weather/classes/current_weather.dart';
import 'package:weather/features/weather/classes/forecast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CurrentWeather? weather;
  Forecast? today;
  bool useMetric = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {
        if (state is Initial) {
          context.read<SettingsBloc>().add(GetSettings());
        }

        if (state is SettingsUpdated) {
          useMetric = context.read<SettingsBloc>().metric;
          context.read<WeatherBloc>().add(GetWeather(useMetric: useMetric));
        }
      },
      builder: (context, state) {
        return BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state is HasWeather) {
              weather = state.weather;
              today = weather?.currentConditions;
            }
          },
          builder: (context, state) {
            return Scaffold(
              body: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/misc/level_slider_3d.png',
                        height: 40,
                        cacheHeight: 40,
                      ),
                    ),
                  ),
                  const LocationHeader(),
                  CurrentConditionsDisplay(
                    weather: today,
                    useMetric: useMetric,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 40.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HumidityDisplay(),
                        WindDisplay(),
                        MoonDisplay(),
                      ],
                    ),
                  ),
                  const HourlyWeather(),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Timer(
      const Duration(minutes: 15),
      () => context.read<WeatherBloc>().add(
            GetWeather(useMetric: useMetric),
          ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(GetWeather(useMetric: useMetric));
  }
}
