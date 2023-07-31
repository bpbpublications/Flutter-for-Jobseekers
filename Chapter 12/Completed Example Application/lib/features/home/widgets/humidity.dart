import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';

class HumidityDisplay extends StatelessWidget {
  const HumidityDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is HasWeather) {
          final num? humidity = state.weather.currentConditions?.humidity;

          if (humidity == null) return Container();

          return SizedBox(
            height: 110,
            child: Column(
              children: [
                Text(
                  'Humidity',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Image.asset(
                  'assets/images/misc/droplet_3d.png',
                  height: 50,
                  cacheHeight: 50,
                ),
                Text(
                  '${humidity.toStringAsFixed(0)}%',
                  style: Theme.of(context).textTheme.labelMedium,
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
