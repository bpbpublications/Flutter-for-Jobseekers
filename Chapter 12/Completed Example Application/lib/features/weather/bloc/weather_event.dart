part of 'weather_bloc.dart';

class GetWeather extends WeatherEvent {
  final bool? useMetric;

  GetWeather({this.useMetric});
}

@immutable
abstract class WeatherEvent {}
