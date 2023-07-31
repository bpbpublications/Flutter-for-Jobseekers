// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreferencesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) havePreferences,
    required TResult Function() initial,
    required TResult Function() preferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? havePreferences,
    TResult? Function()? initial,
    TResult? Function()? preferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? havePreferences,
    TResult Function()? initial,
    TResult Function()? preferencesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HavePreferences value) havePreferences,
    required TResult Function(Initial value) initial,
    required TResult Function(PreferencesUpdated value) preferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePreferences value)? havePreferences,
    TResult? Function(Initial value)? initial,
    TResult? Function(PreferencesUpdated value)? preferencesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePreferences value)? havePreferences,
    TResult Function(Initial value)? initial,
    TResult Function(PreferencesUpdated value)? preferencesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesStateCopyWith<$Res> {
  factory $PreferencesStateCopyWith(
          PreferencesState value, $Res Function(PreferencesState) then) =
      _$PreferencesStateCopyWithImpl<$Res, PreferencesState>;
}

/// @nodoc
class _$PreferencesStateCopyWithImpl<$Res, $Val extends PreferencesState>
    implements $PreferencesStateCopyWith<$Res> {
  _$PreferencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HavePreferencesCopyWith<$Res> {
  factory _$$HavePreferencesCopyWith(
          _$HavePreferences value, $Res Function(_$HavePreferences) then) =
      __$$HavePreferencesCopyWithImpl<$Res>;
  @useResult
  $Res call({bool metric});
}

/// @nodoc
class __$$HavePreferencesCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$HavePreferences>
    implements _$$HavePreferencesCopyWith<$Res> {
  __$$HavePreferencesCopyWithImpl(
      _$HavePreferences _value, $Res Function(_$HavePreferences) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = null,
  }) {
    return _then(_$HavePreferences(
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HavePreferences implements HavePreferences {
  const _$HavePreferences({required this.metric});

  @override
  final bool metric;

  @override
  String toString() {
    return 'PreferencesState.havePreferences(metric: $metric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HavePreferences &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HavePreferencesCopyWith<_$HavePreferences> get copyWith =>
      __$$HavePreferencesCopyWithImpl<_$HavePreferences>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) havePreferences,
    required TResult Function() initial,
    required TResult Function() preferencesUpdated,
  }) {
    return havePreferences(metric);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? havePreferences,
    TResult? Function()? initial,
    TResult? Function()? preferencesUpdated,
  }) {
    return havePreferences?.call(metric);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? havePreferences,
    TResult Function()? initial,
    TResult Function()? preferencesUpdated,
    required TResult orElse(),
  }) {
    if (havePreferences != null) {
      return havePreferences(metric);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HavePreferences value) havePreferences,
    required TResult Function(Initial value) initial,
    required TResult Function(PreferencesUpdated value) preferencesUpdated,
  }) {
    return havePreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePreferences value)? havePreferences,
    TResult? Function(Initial value)? initial,
    TResult? Function(PreferencesUpdated value)? preferencesUpdated,
  }) {
    return havePreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePreferences value)? havePreferences,
    TResult Function(Initial value)? initial,
    TResult Function(PreferencesUpdated value)? preferencesUpdated,
    required TResult orElse(),
  }) {
    if (havePreferences != null) {
      return havePreferences(this);
    }
    return orElse();
  }
}

abstract class HavePreferences implements PreferencesState {
  const factory HavePreferences({required final bool metric}) =
      _$HavePreferences;

  bool get metric;
  @JsonKey(ignore: true)
  _$$HavePreferencesCopyWith<_$HavePreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PreferencesState.initial()';
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
    required TResult Function(bool metric) havePreferences,
    required TResult Function() initial,
    required TResult Function() preferencesUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? havePreferences,
    TResult? Function()? initial,
    TResult? Function()? preferencesUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? havePreferences,
    TResult Function()? initial,
    TResult Function()? preferencesUpdated,
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
    required TResult Function(HavePreferences value) havePreferences,
    required TResult Function(Initial value) initial,
    required TResult Function(PreferencesUpdated value) preferencesUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePreferences value)? havePreferences,
    TResult? Function(Initial value)? initial,
    TResult? Function(PreferencesUpdated value)? preferencesUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePreferences value)? havePreferences,
    TResult Function(Initial value)? initial,
    TResult Function(PreferencesUpdated value)? preferencesUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PreferencesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$PreferencesUpdatedCopyWith<$Res> {
  factory _$$PreferencesUpdatedCopyWith(_$PreferencesUpdated value,
          $Res Function(_$PreferencesUpdated) then) =
      __$$PreferencesUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreferencesUpdatedCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res, _$PreferencesUpdated>
    implements _$$PreferencesUpdatedCopyWith<$Res> {
  __$$PreferencesUpdatedCopyWithImpl(
      _$PreferencesUpdated _value, $Res Function(_$PreferencesUpdated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreferencesUpdated implements PreferencesUpdated {
  const _$PreferencesUpdated();

  @override
  String toString() {
    return 'PreferencesState.preferencesUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreferencesUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool metric) havePreferences,
    required TResult Function() initial,
    required TResult Function() preferencesUpdated,
  }) {
    return preferencesUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool metric)? havePreferences,
    TResult? Function()? initial,
    TResult? Function()? preferencesUpdated,
  }) {
    return preferencesUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool metric)? havePreferences,
    TResult Function()? initial,
    TResult Function()? preferencesUpdated,
    required TResult orElse(),
  }) {
    if (preferencesUpdated != null) {
      return preferencesUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HavePreferences value) havePreferences,
    required TResult Function(Initial value) initial,
    required TResult Function(PreferencesUpdated value) preferencesUpdated,
  }) {
    return preferencesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HavePreferences value)? havePreferences,
    TResult? Function(Initial value)? initial,
    TResult? Function(PreferencesUpdated value)? preferencesUpdated,
  }) {
    return preferencesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HavePreferences value)? havePreferences,
    TResult Function(Initial value)? initial,
    TResult Function(PreferencesUpdated value)? preferencesUpdated,
    required TResult orElse(),
  }) {
    if (preferencesUpdated != null) {
      return preferencesUpdated(this);
    }
    return orElse();
  }
}

abstract class PreferencesUpdated implements PreferencesState {
  const factory PreferencesUpdated() = _$PreferencesUpdated;
}
