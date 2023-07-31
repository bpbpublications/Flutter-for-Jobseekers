import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';
import 'package:weather/features/weather/classes/forecast.dart';
import 'package:weather/features/weather/classes/weather_icon.dart';
import 'package:weather/features/weather/widgets/daily_conditions.dart';
import 'package:weather/features/weather/widgets/daily_temperature.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '7 Day Forecast',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is HasWeather) {
            List<Forecast>? forecast = state.weather.days;
            if (forecast == null || forecast.isEmpty) {
              return const SizedBox();
            }

            return ListView.separated(
              itemCount: 8,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
              itemBuilder: (BuildContext context, int index) {
                final Forecast day = forecast[index];
                final String icon = day.icon!.filename;
                final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
                  day.datetimeEpoch! * 1000,
                );
                final String forecastDay = DateFormat('EEE').format(dateTime);
                final DateTime now = DateTime.now();

                if (dateTime.isBefore(now)) {
                  return const SizedBox.shrink();
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Transform.rotate(
                          angle: -0.5,
                          child: Text(
                            forecastDay,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      DailyConditions(
                        icon: icon,
                        conditions: day.conditions ?? '',
                      ),
                      DailyTemperature(
                        high: day.tempmax,
                        low: day.tempmin,
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
