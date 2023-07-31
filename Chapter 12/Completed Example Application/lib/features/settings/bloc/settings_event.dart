part of 'settings_bloc.dart';

class GetSettings extends SettingsEvent {}

@immutable
abstract class SettingsEvent {}

class UpdateSettings extends SettingsEvent {
  final bool? useMetric;

  UpdateSettings({this.useMetric});
}
