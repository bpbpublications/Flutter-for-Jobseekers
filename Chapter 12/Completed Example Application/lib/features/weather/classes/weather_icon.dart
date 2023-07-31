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

extension AssetImageLocation on WeatherIcon {
  static final Map<WeatherIcon, String> _images = {
    WeatherIcon.clearDay: 'assets/images/weather/sun_3d.png',
    WeatherIcon.clearNight: 'assets/images/moon/full_moon_3d.png',
    WeatherIcon.cloudy: 'assets/images/weather/cloud_3d.png',
    WeatherIcon.fog: 'assets/images/weather/fog_3d.png',
    WeatherIcon.partlyCloudyDay:
        'assets/images/weather/sun_behind_small_cloud_3d.png',
    WeatherIcon.partlyCloudyNight:
        'assets/images/weather/sun_behind_small_cloud_3d.png',
    WeatherIcon.rain: 'assets/images/weather/cloud_with_rain_3d.png',
    WeatherIcon.showersDay:
        'assets/images/weather/sun_behind_rain_cloud_3d.png',
    WeatherIcon.showersNight:
        'assets/images/weather/sun_behind_rain_cloud_3d.png',
    WeatherIcon.snow: 'assets/images/weather/cloud_with_snow_3d.png',
    WeatherIcon.snowShowersDay: 'assets/images/weather/cloud_with_snow_3d.png',
    WeatherIcon.snowShowersNight:
        'assets/images/weather/cloud_with_snow_3d.png',
    WeatherIcon.thunderRain:
        'assets/images/weather/cloud_with_lightning_and_rain_3d.png',
    WeatherIcon.thunderShowersDay:
        'assets/images/weather/cloud_with_lightning_3d.png',
    WeatherIcon.thunderShowersNight:
        'assets/images/weather/cloud_with_lightning_3d.png',
    WeatherIcon.wind: 'assets/images/weather/leaf_fluttering_in_wind_3d.png',
  };

  String get filename => _images[this]!;
}
