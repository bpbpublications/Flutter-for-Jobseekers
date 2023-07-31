class MyCustomTextWidget extends StatelessWidget {
  final String text;
  const MyCustomTextWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
