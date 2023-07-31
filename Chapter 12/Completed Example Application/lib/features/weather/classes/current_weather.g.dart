// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWeather _$$_CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeather(
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentConditions: json['currentConditions'] == null
          ? null
          : Forecast.fromJson(
              json['currentConditions'] as Map<String, dynamic>),
      location: json['resolvedAddress'] as String?,
    );

Map<String, dynamic> _$$_CurrentWeatherToJson(_$_CurrentWeather instance) =>
    <String, dynamic>{
      'days': instance.days,
      'currentConditions': instance.currentConditions,
      'resolvedAddress': instance.location,
    };
