import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final Album? album = await fetchAlbum();
  print('The album title is: ${album?.title ?? "Undefined"}');
}

Future<Album?> fetchAlbum() async {
  final Response response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode != 200) {
    print('There was an error fetching the album.');
    return null;
  }

  final Map<String, dynamic> data = jsonDecode(response.body);
  final Album album = Album.fromJson(data);

  return album;
}

class Album {
  int? userId;
  int? id;
  String? title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );
}
