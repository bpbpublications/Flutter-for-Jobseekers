import 'package:freezed_annotation/freezed_annotation.dart';

enum WeatherIcon {
  @JsonValue('clear-day')
  clearDay,
  @JsonValue('clear-night')
  clearNight,
  cloudy,
  fog,
  @JsonValue('partly-cloudy-day')
  partlyCloudyDay,
  @JsonValue('partly-cloudy-night')
  partlyCloudyNight,
  rain,
  @JsonValue('showers-day')
  showersDay,
  @JsonValue('showers-night')
  showersNight,
  snow,
  @JsonValue('snow-showers-day')
  snowShowersDay,
  @JsonValue('snow-showers-night')
  snowShowersNight,
  @JsonValue('thunder-rain')
  thunderRain,
  @JsonValue('thunder-showers-day')
  thunderShowersDay,
  @JsonValue('thunder-showers-night')
  thunderShowersNight,
  wind,
}
