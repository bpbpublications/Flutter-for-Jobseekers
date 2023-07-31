// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) hasSettings,
    required TResult Function() initial,
    required TResult Function() savingSettings,
    required TResult Function() settingsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? hasSettings,
    TResult? Function()? initial,
    TResult? Function()? savingSettings,
    TResult? Function()? settingsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? hasSettings,
    TResult Function()? initial,
    TResult Function()? savingSettings,
    TResult Function()? settingsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HasSettings value) hasSettings,
    required TResult Function(Initial value) initial,
    required TResult Function(SavingSettings value) savingSettings,
    required TResult Function(SettingsUpdated value) settingsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HasSettings value)? hasSettings,
    TResult? Function(Initial value)? initial,
    TResult? Function(SavingSettings value)? savingSettings,
    TResult? Function(SettingsUpdated value)? settingsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HasSettings value)? hasSettings,
    TResult Function(Initial value)? initial,
    TResult Function(SavingSettings value)? savingSettings,
    TResult Function(SettingsUpdated value)? settingsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HasSettingsCopyWith<$Res> {
  factory _$$HasSettingsCopyWith(
          _$HasSettings value, $Res Function(_$HasSettings) then) =
      __$$HasSettingsCopyWithImpl<$Res>;
  @useResult
  $Res call({bool metric});
}

/// @nodoc
class __$$HasSettingsCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$HasSettings>
    implements _$$HasSettingsCopyWith<$Res> {
  __$$HasSettingsCopyWithImpl(
      _$HasSettings _value, $Res Function(_$HasSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = null,
  }) {
    return _then(_$HasSettings(
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HasSettings implements HasSettings {
  const _$HasSettings({required this.metric});

  @override
  final bool metric;

  @override
  String toString() {
    return 'SettingsState.hasSettings(metric: $metric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasSettings &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasSettingsCopyWith<_$HasSettings> get copyWith =>
      __$$HasSettingsCopyWithImpl<_$HasSettings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) hasSettings,
    required TResult Function() initial,
    required TResult Function() savingSettings,
    required TResult Function() settingsUpdated,
  }) {
    return hasSettings(metric);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? hasSettings,
    TResult? Function()? initial,
    TResult? Function()? savingSettings,
    TResult? Function()? settingsUpdated,
  }) {
    return hasSettings?.call(metric);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? hasSettings,
    TResult Function()? initial,
    TResult Function()? savingSettings,
    TResult Function()? settingsUpdated,
    required TResult orElse(),
  }) {
    if (hasSettings != null) {
      return hasSettings(metric);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HasSettings value) hasSettings,
    required TResult Function(Initial value) initial,
    required TResult Function(SavingSettings value) savingSettings,
    required TResult Function(SettingsUpdated value) settingsUpdated,
  }) {
    return hasSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HasSettings value)? hasSettings,
    TResult? Function(Initial value)? initial,
    TResult? Function(SavingSettings value)? savingSettings,
    TResult? Function(SettingsUpdated value)? settingsUpdated,
  }) {
    return hasSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HasSettings value)? hasSettings,
    TResult Function(Initial value)? initial,
    TResult Function(SavingSettings value)? savingSettings,
    TResult Function(SettingsUpdated value)? settingsUpdated,
    required TResult orElse(),
  }) {
    if (hasSettings != null) {
      return hasSettings(this);
    }
    return orElse();
  }
}

abstract class HasSettings implements SettingsState {
  const factory HasSettings({required final bool metric}) = _$HasSettings;

  bool get metric;
  @JsonKey(ignore: true)
  _$$HasSettingsCopyWith<_$HasSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) hasSettings,
    required TResult Function() initial,
    required TResult Function() savingSettings,
    required TResult Function() settingsUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? hasSettings,
    TResult? Function()? initial,
    TResult? Function()? savingSettings,
    TResult? Function()? settingsUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? hasSettings,
    TResult Function()? initial,
    TResult Function()? savingSettings,
    TResult Function()? settingsUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HasSettings value) hasSettings,
    required TResult Function(Initial value) initial,
    required TResult Function(SavingSettings value) savingSettings,
    required TResult Function(SettingsUpdated value) settingsUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HasSettings value)? hasSettings,
    TResult? Function(Initial value)? initial,
    TResult? Function(SavingSettings value)? savingSettings,
    TResult? Function(SettingsUpdated value)? settingsUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HasSettings value)? hasSettings,
    TResult Function(Initial value)? initial,
    TResult Function(SavingSettings value)? savingSettings,
    TResult Function(SettingsUpdated value)? settingsUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$SavingSettingsCopyWith<$Res> {
  factory _$$SavingSettingsCopyWith(
          _$SavingSettings value, $Res Function(_$SavingSettings) then) =
      __$$SavingSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavingSettingsCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SavingSettings>
    implements _$$SavingSettingsCopyWith<$Res> {
  __$$SavingSettingsCopyWithImpl(
      _$SavingSettings _value, $Res Function(_$SavingSettings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavingSettings implements SavingSettings {
  const _$SavingSettings();

  @override
  String toString() {
    return 'SettingsState.savingSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavingSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) hasSettings,
    required TResult Function() initial,
    required TResult Function() savingSettings,
    required TResult Function() settingsUpdated,
  }) {
    return savingSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? hasSettings,
    TResult? Function()? initial,
    TResult? Function()? savingSettings,
    TResult? Function()? settingsUpdated,
  }) {
    return savingSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? hasSettings,
    TResult Function()? initial,
    TResult Function()? savingSettings,
    TResult Function()? settingsUpdated,
    required TResult orElse(),
  }) {
    if (savingSettings != null) {
      return savingSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HasSettings value) hasSettings,
    required TResult Function(Initial value) initial,
    required TResult Function(SavingSettings value) savingSettings,
    required TResult Function(SettingsUpdated value) settingsUpdated,
  }) {
    return savingSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HasSettings value)? hasSettings,
    TResult? Function(Initial value)? initial,
    TResult? Function(SavingSettings value)? savingSettings,
    TResult? Function(SettingsUpdated value)? settingsUpdated,
  }) {
    return savingSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HasSettings value)? hasSettings,
    TResult Function(Initial value)? initial,
    TResult Function(SavingSettings value)? savingSettings,
    TResult Function(SettingsUpdated value)? settingsUpdated,
    required TResult orElse(),
  }) {
    if (savingSettings != null) {
      return savingSettings(this);
    }
    return orElse();
  }
}

abstract class SavingSettings implements SettingsState {
  const factory SavingSettings() = _$SavingSettings;
}

/// @nodoc
abstract class _$$SettingsUpdatedCopyWith<$Res> {
  factory _$$SettingsUpdatedCopyWith(
          _$SettingsUpdated value, $Res Function(_$SettingsUpdated) then) =
      __$$SettingsUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsUpdatedCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsUpdated>
    implements _$$SettingsUpdatedCopyWith<$Res> {
  __$$SettingsUpdatedCopyWithImpl(
      _$SettingsUpdated _value, $Res Function(_$SettingsUpdated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsUpdated implements SettingsUpdated {
  const _$SettingsUpdated();

  @override
  String toString() {
    return 'SettingsState.settingsUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) hasSettings,
    required TResult Function() initial,
    required TResult Function() savingSettings,
    required TResult Function() settingsUpdated,
  }) {
    return settingsUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? hasSettings,
    TResult? Function()? initial,
    TResult? Function()? savingSettings,
    TResult? Function()? settingsUpdated,
  }) {
    return settingsUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? hasSettings,
    TResult Function()? initial,
    TResult Function()? savingSettings,
    TResult Function()? settingsUpdated,
    required TResult orElse(),
  }) {
    if (settingsUpdated != null) {
      return settingsUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HasSettings value) hasSettings,
    required TResult Function(Initial value) initial,
    required TResult Function(SavingSettings value) savingSettings,
    required TResult Function(SettingsUpdated value) settingsUpdated,
  }) {
    return settingsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HasSettings value)? hasSettings,
    TResult? Function(Initial value)? initial,
    TResult? Function(SavingSettings value)? savingSettings,
    TResult? Function(SettingsUpdated value)? settingsUpdated,
  }) {
    return settingsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HasSettings value)? hasSettings,
    TResult Function(Initial value)? initial,
    TResult Function(SavingSettings value)? savingSettings,
    TResult Function(SettingsUpdated value)? settingsUpdated,
    required TResult orElse(),
  }) {
    if (settingsUpdated != null) {
      return settingsUpdated(this);
    }
    return orElse();
  }
}

abstract class SettingsUpdated implements SettingsState {
  const factory SettingsUpdated() = _$SettingsUpdated;
}
