import 'package:freezed_annotation/freezed_annotation.dart';

enum WeatherIcon {
  @JsonValue('clear-day')
  clearDay('assets/images/weather/sun_3d.png'),
  @JsonValue('clear-night')
  clearNight('assets/images/moon/full_moon_3d.png'),
  cloudy('assets/images/weather/cloud_3d.png'),
  fog('assets/images/weather/fog_3d.png'),
  @JsonValue('partly-cloudy-day')
  partlyCloudyDay('assets/images/weather/sun_behind_small_cloud_3d.png'),
  @JsonValue('partly-cloudy-night')
  partlyCloudyNight('assets/images/weather/sun_behind_small_cloud_3d.png'),
  rain('assets/images/weather/cloud_with_rain_3d.png'),
  @JsonValue('showers-day')
  showersDay('assets/images/weather/sun_behind_rain_cloud_3d.png'),
  @JsonValue('showers-night')
  showersNight('assets/images/weather/sun_behind_rain_cloud_3d.png'),
  snow('assets/images/weather/cloud_with_snow_3d.png'),
  @JsonValue('snow-showers-day')
  snowShowersDay('assets/images/weather/cloud_with_snow_3d.png'),
  @JsonValue('snow-showers-night')
  snowShowersNight('assets/images/weather/cloud_with_snow_3d.png'),
  @JsonValue('thunder-rain')
  thunderRain('assets/images/weather/cloud_with_lightning_and_rain_3d.png'),
  @JsonValue('thunder-showers-day')
  thunderShowersDay('assets/images/weather/cloud_with_lightning_3d.png'),
  @JsonValue('thunder-showers-night')
  thunderShowersNight('assets/images/weather/cloud_with_lightning_3d.png'),
  wind('assets/images/weather/leaf_fluttering_in_wind_3d.png');

  final String image;

  const WeatherIcon(this.image);
}
