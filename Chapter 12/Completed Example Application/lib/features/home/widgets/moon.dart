import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';

class MoonDisplay extends StatelessWidget {
  const MoonDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is HasWeather) {
          final String? moonPhaseIcon =
              state.weather.currentConditions?.moonPhaseIcon;
          final String? moonPhaseName =
              state.weather.currentConditions?.moonPhaseName;
          if (moonPhaseIcon == null || moonPhaseName == null) {
            return const SizedBox.shrink();
          }

          return SizedBox(
            height: 110,
            child: Column(
              children: [
                Text(
                  'Moon',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Image.asset(
                  moonPhaseIcon,
                  height: 50,
                  cacheHeight: 50,
                ),
                Text(
                  moonPhaseName,
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
