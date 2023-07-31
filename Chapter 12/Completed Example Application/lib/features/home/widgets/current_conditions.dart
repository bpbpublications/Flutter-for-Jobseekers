import 'package:flutter/material.dart';
import 'package:weather/features/weather/classes/forecast.dart';
import 'package:weather/features/weather/classes/weather_icon.dart';

class CurrentConditionsDisplay extends StatelessWidget {
  final Forecast? weather;
  final bool? useMetric;
  const CurrentConditionsDisplay({
    Key? key,
    this.weather,
    this.useMetric,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          if (weather == null)
            const CircularProgressIndicator(color: Colors.white),
          Stack(
            alignment: Alignment.center,
            children: [
              if (weather?.icon?.filename != null)
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.white,
                        Theme.of(context).colorScheme.onBackground,
                        Theme.of(context).colorScheme.background,
                      ],
                    ),
                  ),
                ),
              if (weather?.icon?.filename != null)
                Image.asset(
                  weather!.icon!.filename,
                  height: 200,
                  width: 200,
                  cacheWidth: 200,
                  cacheHeight: 200,
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240.0),
            child: Column(
              children: [
                Text(
                  weather != null
                      ? '${(weather!.temp)!.toStringAsFixed((useMetric ?? true) ? 1 : 0)}º'
                      : '',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  weather?.conditions ?? '',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
