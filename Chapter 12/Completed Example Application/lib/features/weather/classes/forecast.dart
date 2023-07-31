// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/weather/classes/weather_icon.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

enum CardinalDirection {
  N,
  S,
  E,
  W,
  NE,
  SE,
  NW,
  SW,
  None,
}

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    int? datetimeEpoch,
    num? tempmax,
    num? tempmin,
    num? temp,
    num? humidity,
    @JsonKey(name: 'windspeed') num? windSpeed,
    @JsonKey(name: 'winddir') num? windDirection,
    double? moonphase,
    String? conditions,
    WeatherIcon? icon,
    List<Forecast>? hours,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  const Forecast._();

  CardinalDirection get cardinalDirection {
    final Map<CardinalDirection, List<double>> degreeMap = {
      CardinalDirection.NE: [22.51, 67.5],
      CardinalDirection.E: [67.51, 112.5],
      CardinalDirection.SE: [112.51, 157.5],
      CardinalDirection.S: [157.51, 202.5],
      CardinalDirection.SW: [202.51, 247.5],
      CardinalDirection.W: [247.51, 292.5],
      CardinalDirection.NW: [292.51, 337.5],
    };
    CardinalDirection cardinal = CardinalDirection.None;
    if (windDirection == null) {
      return CardinalDirection.None;
    }

    if ((windDirection! > 0 && windDirection! <= 22.5) ||
        (windDirection! >= 337.51 && windDirection! < 360)) {
      return CardinalDirection.N;
    }

    cardinal = degreeMap.entries
        .firstWhere((element) =>
            element.value.first <= windDirection! &&
            element.value.last >= windDirection!)
        .key;

    return cardinal;
  }

  String get moonPhaseIcon {
    final Map<List<double>, String> moonIcons = {
      [0.00, 0.12]: 'assets/images/moon/new_moon_3d.png',
      [0.13, 0.24]: 'assets/images/moon/waxing_crescent_moon_3d.png',
      [0.25, 0.36]: 'assets/images/moon/first_quarter_moon_3d.png',
      [0.37, 0.49]: 'assets/images/moon/waxing_gibbous_moon_3d.png',
      [0.50, 0.50]: 'assets/images/moon/full_moon_3d.png',
      [0.51, 0.62]: 'assets/images/moon/waning_gibbous_moon_3d.png',
      [0.63, 0.74]: 'assets/images/moon/last_quarter_moon_3d.png',
      [0.75, 0.89]: 'assets/images/moon/waning_crescent_moon_3d.png',
      [0.90, 1.00]: 'assets/images/moon/new_moon_3d.png',
    };

    return moonIcons.entries
        .firstWhere((element) =>
            element.key.first <= (moonphase ?? 0).toDouble() &&
            element.key.last >= (moonphase ?? 0).toDouble())
        .value;
  }

  String get moonPhaseName {
    final Map<List<double>, String> phaseNames = {
      [0.00, 0.12]: 'New Moon',
      [0.13, 0.49]: 'Waxing',
      [0.50, 0.50]: 'Full Moon',
      [0.51, 0.89]: 'Waning',
      [0.90, 1.00]: 'New Moon',
    };

    return phaseNames.entries
        .firstWhere((element) =>
            element.key.first <= (moonphase ?? 0).toDouble() &&
            element.key.last >= (moonphase ?? 0).toDouble())
        .value;
  }
}
