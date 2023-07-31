import 'package:flutter/material.dart';

class DailyTemperature extends StatelessWidget {
  final num? high;
  final num? low;
  const DailyTemperature({
    Key? key,
    this.high,
    this.low,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '${(high ?? 0).toStringAsFixed(0)}º',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 64,
                ),
          ),
          Text(
            'Low ${(low ?? 0).toStringAsFixed(0)}º',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 28,
                ),
          ),
        ],
      ),
    );
  }
}
