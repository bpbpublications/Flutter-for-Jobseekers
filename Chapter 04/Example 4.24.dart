class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyInheritedWidget(
          text: "Hello, Flutter!",
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  final String text;

  @override
  const MyInheritedWidget({
    Key? key,
    required this.text,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return true;
  }

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inheritedWidget =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    final String text = inheritedWidget!.text;

    return Text(text);
  }
}
