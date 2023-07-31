import 'package:flutter/material.dart';

class DailyConditions extends StatelessWidget {
  final String icon;
  final String conditions;
  const DailyConditions({
    Key? key,
    required this.icon,
    required this.conditions,
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
          Image.asset(
            icon,
            height: 60,
            width: 60,
            cacheHeight: 60,
            cacheWidth: 60,
          ),
          Flexible(
            child: Text(
              conditions,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
