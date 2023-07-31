// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      datetimeEpoch: json['datetimeEpoch'] as int?,
      tempmax: json['tempmax'] as num?,
      tempmin: json['tempmin'] as num?,
      temp: json['temp'] as num?,
      humidity: json['humidity'] as num?,
      windSpeed: json['windspeed'] as num?,
      windDirection: json['winddir'] as num?,
      moonphase: (json['moonphase'] as num?)?.toDouble(),
      conditions: json['conditions'] as String?,
      icon: $enumDecodeNullable(_$WeatherIconEnumMap, json['icon']),
      hours: (json['hours'] as List<dynamic>?)
          ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'datetimeEpoch': instance.datetimeEpoch,
      'tempmax': instance.tempmax,
      'tempmin': instance.tempmin,
      'temp': instance.temp,
      'humidity': instance.humidity,
      'windspeed': instance.windSpeed,
      'winddir': instance.windDirection,
      'moonphase': instance.moonphase,
      'conditions': instance.conditions,
      'icon': _$WeatherIconEnumMap[instance.icon],
      'hours': instance.hours,
    };

const _$WeatherIconEnumMap = {
  WeatherIcon.clearDay: 'clear-day',
  WeatherIcon.clearNight: 'clear-night',
  WeatherIcon.cloudy: 'cloudy',
  WeatherIcon.fog: 'fog',
  WeatherIcon.partlyCloudyDay: 'partly-cloudy-day',
  WeatherIcon.partlyCloudyNight: 'partly-cloudy-night',
  WeatherIcon.rain: 'rain',
  WeatherIcon.showersDay: 'showers-day',
  WeatherIcon.showersNight: 'showers-night',
  WeatherIcon.snow: 'snow',
  WeatherIcon.snowShowersDay: 'snow-showers-day',
  WeatherIcon.snowShowersNight: 'snow-showers-night',
  WeatherIcon.thunderRain: 'thunder-rain',
  WeatherIcon.thunderShowersDay: 'thunder-showers-day',
  WeatherIcon.thunderShowersNight: 'thunder-showers-night',
  WeatherIcon.wind: 'wind',
};
