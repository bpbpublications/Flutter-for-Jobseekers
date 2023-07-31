// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  int? get datetimeEpoch => throw _privateConstructorUsedError;
  num? get tempmax => throw _privateConstructorUsedError;
  num? get tempmin => throw _privateConstructorUsedError;
  num? get temp => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'windspeed')
  num? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'winddir')
  num? get windDirection => throw _privateConstructorUsedError;
  double? get moonphase => throw _privateConstructorUsedError;
  String? get conditions => throw _privateConstructorUsedError;
  WeatherIcon? get icon => throw _privateConstructorUsedError;
  List<Forecast>? get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call(
      {int? datetimeEpoch,
      num? tempmax,
      num? tempmin,
      num? temp,
      num? humidity,
      @JsonKey(name: 'windspeed') num? windSpeed,
      @JsonKey(name: 'winddir') num? windDirection,
      double? moonphase,
      String? conditions,
      WeatherIcon? icon,
      List<Forecast>? hours});
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeEpoch = freezed,
    Object? tempmax = freezed,
    Object? tempmin = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? moonphase = freezed,
    Object? conditions = freezed,
    Object? icon = freezed,
    Object? hours = freezed,
  }) {
    return _then(_value.copyWith(
      datetimeEpoch: freezed == datetimeEpoch
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      tempmax: freezed == tempmax
          ? _value.tempmax
          : tempmax // ignore: cast_nullable_to_non_nullable
              as num?,
      tempmin: freezed == tempmin
          ? _value.tempmin
          : tempmin // ignore: cast_nullable_to_non_nullable
              as num?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as num?,
      windDirection: freezed == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as num?,
      moonphase: freezed == moonphase
          ? _value.moonphase
          : moonphase // ignore: cast_nullable_to_non_nullable
              as double?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherIcon?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<Forecast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$$_ForecastCopyWith(
          _$_Forecast value, $Res Function(_$_Forecast) then) =
      __$$_ForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? datetimeEpoch,
      num? tempmax,
      num? tempmin,
      num? temp,
      num? humidity,
      @JsonKey(name: 'windspeed') num? windSpeed,
      @JsonKey(name: 'winddir') num? windDirection,
      double? moonphase,
      String? conditions,
      WeatherIcon? icon,
      List<Forecast>? hours});
}

/// @nodoc
class __$$_ForecastCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$_Forecast>
    implements _$$_ForecastCopyWith<$Res> {
  __$$_ForecastCopyWithImpl(
      _$_Forecast _value, $Res Function(_$_Forecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetimeEpoch = freezed,
    Object? tempmax = freezed,
    Object? tempmin = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? moonphase = freezed,
    Object? conditions = freezed,
    Object? icon = freezed,
    Object? hours = freezed,
  }) {
    return _then(_$_Forecast(
      datetimeEpoch: freezed == datetimeEpoch
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      tempmax: freezed == tempmax
          ? _value.tempmax
          : tempmax // ignore: cast_nullable_to_non_nullable
              as num?,
      tempmin: freezed == tempmin
          ? _value.tempmin
          : tempmin // ignore: cast_nullable_to_non_nullable
              as num?,
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as num?,
      windDirection: freezed == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as num?,
      moonphase: freezed == moonphase
          ? _value.moonphase
          : moonphase // ignore: cast_nullable_to_non_nullable
              as double?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherIcon?,
      hours: freezed == hours
          ? _value._hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<Forecast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Forecast extends _Forecast {
  const _$_Forecast(
      {this.datetimeEpoch,
      this.tempmax,
      this.tempmin,
      this.temp,
      this.humidity,
      @JsonKey(name: 'windspeed') this.windSpeed,
      @JsonKey(name: 'winddir') this.windDirection,
      this.moonphase,
      this.conditions,
      this.icon,
      final List<Forecast>? hours})
      : _hours = hours,
        super._();

  factory _$_Forecast.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastFromJson(json);

  @override
  final int? datetimeEpoch;
  @override
  final num? tempmax;
  @override
  final num? tempmin;
  @override
  final num? temp;
  @override
  final num? humidity;
  @override
  @JsonKey(name: 'windspeed')
  final num? windSpeed;
  @override
  @JsonKey(name: 'winddir')
  final num? windDirection;
  @override
  final double? moonphase;
  @override
  final String? conditions;
  @override
  final WeatherIcon? icon;
  final List<Forecast>? _hours;
  @override
  List<Forecast>? get hours {
    final value = _hours;
    if (value == null) return null;
    if (_hours is EqualUnmodifiableListView) return _hours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Forecast(datetimeEpoch: $datetimeEpoch, tempmax: $tempmax, tempmin: $tempmin, temp: $temp, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection, moonphase: $moonphase, conditions: $conditions, icon: $icon, hours: $hours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Forecast &&
            (identical(other.datetimeEpoch, datetimeEpoch) ||
                other.datetimeEpoch == datetimeEpoch) &&
            (identical(other.tempmax, tempmax) || other.tempmax == tempmax) &&
            (identical(other.tempmin, tempmin) || other.tempmin == tempmin) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.moonphase, moonphase) ||
                other.moonphase == moonphase) &&
            (identical(other.conditions, conditions) ||
                other.conditions == conditions) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._hours, _hours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      datetimeEpoch,
      tempmax,
      tempmin,
      temp,
      humidity,
      windSpeed,
      windDirection,
      moonphase,
      conditions,
      icon,
      const DeepCollectionEquality().hash(_hours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastCopyWith<_$_Forecast> get copyWith =>
      __$$_ForecastCopyWithImpl<_$_Forecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastToJson(
      this,
    );
  }
}

abstract class _Forecast extends Forecast {
  const factory _Forecast(
      {final int? datetimeEpoch,
      final num? tempmax,
      final num? tempmin,
      final num? temp,
      final num? humidity,
      @JsonKey(name: 'windspeed') final num? windSpeed,
      @JsonKey(name: 'winddir') final num? windDirection,
      final double? moonphase,
      final String? conditions,
      final WeatherIcon? icon,
      final List<Forecast>? hours}) = _$_Forecast;
  const _Forecast._() : super._();

  factory _Forecast.fromJson(Map<String, dynamic> json) = _$_Forecast.fromJson;

  @override
  int? get datetimeEpoch;
  @override
  num? get tempmax;
  @override
  num? get tempmin;
  @override
  num? get temp;
  @override
  num? get humidity;
  @override
  @JsonKey(name: 'windspeed')
  num? get windSpeed;
  @override
  @JsonKey(name: 'winddir')
  num? get windDirection;
  @override
  double? get moonphase;
  @override
  String? get conditions;
  @override
  WeatherIcon? get icon;
  @override
  List<Forecast>? get hours;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastCopyWith<_$_Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}
