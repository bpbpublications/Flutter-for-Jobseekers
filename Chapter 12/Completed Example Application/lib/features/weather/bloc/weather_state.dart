part of 'weather_bloc.dart';

class HasLocation extends WeatherState {
  final LocationData location;

  HasLocation({required this.location});
}

class HasWeather extends WeatherState {
  final CurrentWeather weather;

  HasWeather({required this.weather});
}

class LocationError extends WeatherState {}

class UpdatingLocation extends WeatherState {}

class UpdatingWeather extends WeatherState {}

class WeatherInitial extends WeatherState {}

@immutable
abstract class WeatherState {}
