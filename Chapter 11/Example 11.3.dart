import 'package:flutter/material.dart';

class MyScrollingList extends StatelessWidget {
  const MyScrollingList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> integerList = List<int>.generate(2000, (index) => x);

    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: integerList.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text('$i'),
          );
        },
      ),
    );
  }
}
