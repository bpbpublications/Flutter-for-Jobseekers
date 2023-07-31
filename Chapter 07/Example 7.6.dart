import 'dart:convert';

import 'package:http/http.dart';

void main() async {
  // Don't foget to add http to your pubspec.yaml
  final Response response = await fetchAlbum();
  if (response.statusCode != 200) {
    print('There was an error fetching the album.');
    return;
  }

  final data = jsonDecode(response.body);
  print('The album title is: ${data["title"]}');
}

Client http = Client();

Future<Response> fetchAlbum() {
  // This http call will cause a non-200 status code to be returned as part of the response
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/a'));
}
