import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const MainScreen(),
      '/settings': (context) => const SettingsScreen(),
    },
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is the main screen of my application'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Navigate!'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
            }),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I'm so glad you found your way over. "),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('See you later!'),
        ),
      ),
    );
  }
}
