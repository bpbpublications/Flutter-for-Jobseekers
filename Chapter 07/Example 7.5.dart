import 'dart:convert';

import 'package:http/http.dart';

void main() async {
  // Don't foget to add http to your pubspec.yaml
  final Response response = await fetchAlbum();
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print('The album title is: ${data["title"]}');
  }
}

Client http = Client();

Future<Response> fetchAlbum() {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}
