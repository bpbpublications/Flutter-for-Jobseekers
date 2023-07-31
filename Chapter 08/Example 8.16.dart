import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class ChooseOneScreen extends StatelessWidget {
  const ChooseOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Option One'),
            onPressed: () {
              // Return "Option One"
            },
          ),
          ElevatedButton(
            child: const Text('Option Two'),
            onPressed: () {
              // Return "Option Two"
            },
          ),
        ],
      ),
    );
  }
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
