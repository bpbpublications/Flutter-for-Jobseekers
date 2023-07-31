import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:weather/features/weather/api/api.dart';
import 'package:weather/features/weather/classes/current_weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherApi api = const WeatherApi();
  WeatherBloc() : super(WeatherInitial()) {
    on<GetWeather>((event, emit) async {
      emit(UpdatingLocation());
      LocationData location = LocationData(latitude: 0, longitude: 0);

      try {
        location = await getLocation();
      } catch (_) {
        emit(LocationError());
      }

      if (location.latitude == null) {
        emit(LocationError());
      }

      if (location.latitude != null) {
        emit(HasLocation(location: location));
        final CurrentWeather? weather =
            await api.getWeather(location, useMetric: event.useMetric);
        if (weather != null) {
          emit(HasWeather(weather: weather));
        }

        if (weather == null) {
          emit(LocationError());
        }
      }
    });
  }
}
