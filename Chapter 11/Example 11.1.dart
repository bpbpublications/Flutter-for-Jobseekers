import 'package:flutter/material.dart';

class MyScrollingList extends StatelessWidget {
  const MyScrollingList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> integerList = List<int>.generate(2000, (index) => x);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          for (final int i in integerList)
            ListTile(
              title: Text('$i'),
            ),
        ],
      ),
    );
  }
}
