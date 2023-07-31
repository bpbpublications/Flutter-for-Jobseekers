import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? _chosenOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(_chosenOption ?? ''),
          ElevatedButton(
            child: const Text('Choose one'),
            onPressed: () {
              // Route to the option screen and get the value back
            },
          ),
        ],
      ),
    );
  }
}
