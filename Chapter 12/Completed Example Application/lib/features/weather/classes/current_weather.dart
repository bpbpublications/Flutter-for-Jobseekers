import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/classes/forecast.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    List<Forecast>? days,
    Forecast? currentConditions,
    @JsonKey(name: 'resolvedAddress') String? location,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
