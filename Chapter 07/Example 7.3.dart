void main() async {
  String? hello = await Future<String?>.delayed(
    const Duration(seconds: 1),
  ).then((_) => "Hello");

  print(hello);
}
