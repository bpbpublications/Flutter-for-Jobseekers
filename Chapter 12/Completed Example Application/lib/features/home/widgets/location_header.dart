import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/weather/bloc/weather_bloc.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          String text = '';

          if (state is UpdatingLocation) {
            text = 'Updating location...';
          }

          if (state is LocationError) {
            text = 'Error Updating Location';
          }

          return Text(
            text,
            style: Theme.of(context).textTheme.headlineMedium,
          );
        },
      ),
    );
  }
}
