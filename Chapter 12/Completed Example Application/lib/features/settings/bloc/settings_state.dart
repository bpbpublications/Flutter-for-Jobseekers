part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.hasSettings({
    required bool metric,
  }) = HasSettings;
  const factory SettingsState.initial() = Initial;
  const factory SettingsState.savingSettings() = SavingSettings;
  const factory SettingsState.settingsUpdated() = SettingsUpdated;
}
