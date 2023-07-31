import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/features/settings/bloc/settings_bloc.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';
import 'package:weather/features/weather/classes/forecast.dart';
import 'package:weather/features/weather/classes/weather_icon.dart';
import 'package:weather/features/weather/screens/weather_screen.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is HasWeather) {
          final List<Forecast>? hourlyForecast =
              state.weather.days?.first.hours;
          if (hourlyForecast == null) return const SizedBox();

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const WeatherScreen(),
                        ),
                      ),
                      child: const Text('7 Day Forecast >'),
                    ),
                  ],
                ),
                if (hourlyForecast.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      height: 105,
                      child: Scrollable(
                        semanticChildCount: 1,
                        axisDirection: AxisDirection.down,
                        viewportBuilder: (context, offset) {
                          return NotificationListener<OverscrollNotification>(
                            // Suppress OverscrollNotification events that escape from the inner scrollable
                            onNotification: (notification) =>
                                notification.metrics.axisDirection !=
                                AxisDirection.down,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              clipBehavior: Clip.none,
                              itemBuilder: (BuildContext context, int index) {
                                final WeatherIcon? icon =
                                    hourlyForecast[index].icon;
                                final DateTime dateTime =
                                    DateTime.fromMillisecondsSinceEpoch(
                                        hourlyForecast[index].datetimeEpoch! *
                                            1000);
                                final bool useMetric =
                                    context.read<SettingsBloc>().metric;
                                late String forecastHour;
                                if (useMetric) {
                                  forecastHour =
                                      DateFormat.Hm().format(dateTime);
                                } else {
                                  forecastHour =
                                      DateFormat('h:mm a').format(dateTime);
                                }

                                final DateTime now = DateTime.now();
                                if (dateTime.isBefore(now)) {
                                  return const SizedBox.shrink();
                                }
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        icon?.filename ??
                                            'assets/images/misc/white_question_mark_3d.png',
                                        height: 50,
                                        cacheHeight: 50,
                                      ),
                                      Text(
                                        '${hourlyForecast[index].temp!.toStringAsFixed(0)}º',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                      Text(forecastHour),
                                    ],
                                  ),
                                );
                              },
                              itemCount: hourlyForecast.length,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
