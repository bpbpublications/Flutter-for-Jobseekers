import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/settings/bloc/settings_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool useMetric = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocConsumer<SettingsBloc, SettingsState>(
          listener: (context, state) {
            if (state is SettingsUpdated) {
              useMetric = context.read<SettingsBloc>().metric;
              setState(() {});
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Image.asset(
                        'assets/images/misc/thermometer_3d.png',
                        height: 30,
                        cacheHeight: 30,
                      ),
                    ),
                    Text(
                      'Temperature Unit',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 40,
                  ),
                  child: Container(
                    padding: EdgeInsets.zero,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(120, 122, 145, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: ToggleButtons(
                      isSelected: [!useMetric, useMetric],
                      fillColor: Theme.of(context).colorScheme.secondary,
                      textStyle:
                          Theme.of(context).textTheme.labelMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                      selectedColor: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      onPressed: (int i) {
                        context
                            .read<SettingsBloc>()
                            .add(UpdateSettings(useMetric: i == 1));
                      },
                      children: const [
                        Text('ºF'),
                        Text('ºC'),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<SettingsBloc>().add(GetSettings());
  }
}
