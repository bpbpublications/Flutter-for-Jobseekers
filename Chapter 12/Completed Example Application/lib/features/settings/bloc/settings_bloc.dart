import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  bool? _useMetric;

  SettingsBloc() : super(const Initial()) {
    on<GetSettings>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool useMetric = prefs.getBool('useMetric') ?? false;
      _useMetric = useMetric;
      emit(HasSettings(
        metric: useMetric,
      ));
    });
    on<UpdateSettings>((event, emit) async {
      emit(const SavingSettings());
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool useMetric =
          event.useMetric ?? prefs.getBool('useMetric') ?? false;
      await prefs.setBool('useMetric', useMetric);
      _useMetric = useMetric;
      emit(const SettingsUpdated());
    });
  }

  bool get metric => _useMetric ?? false;
}
