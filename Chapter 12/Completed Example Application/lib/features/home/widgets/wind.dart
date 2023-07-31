import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/settings/bloc/settings_bloc.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';
import 'package:weather/features/weather/classes/forecast.dart';

class WindDisplay extends StatelessWidget {
  const WindDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is HasWeather) {
          final CardinalDirection? cardinalDirection =
              state.weather.currentConditions?.cardinalDirection;
          final num? speed = state.weather.currentConditions?.windSpeed;
          if (cardinalDirection == null || speed == null) {
            return const SizedBox.shrink();
          }

          final bool useMetric = context.read<SettingsBloc>().metric;

          return SizedBox(
            height: 120,
            child: Column(
              children: [
                Text(
                  'Wind',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Image.asset(
                  'assets/images/misc/wind_face_3d.png',
                  height: 50,
                  cacheHeight: 50,
                ),
                Text(
                  '${(speed).toStringAsFixed(0)} ${useMetric ? "k" : "m"}/h',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  cardinalDirection.name,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
