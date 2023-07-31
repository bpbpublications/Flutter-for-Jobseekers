class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  bool alwaysFalse = true;

  Future<bool> _futureFalse() async {
    return Future.delayed(const Duration(seconds: 1), () {
      return false;
    });
  }

  void _resolveFutures() async {
    alwaysFalse = await _futureFalse();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _resolveFutures();
  }

  @override
  Widget build(BuildContext context) {
    return Text('$alwaysFalse');
  }
}
