import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  try {
    final Album album = await createAlbum("My own album");
    print("Album ${album.id}'s title is: ${album.title}");
  } catch (e) {
    print("There was an exception: $e");
  }
}

Future<Album> createAlbum(String title) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode != 201) {
    throw Exception('Failed to create album.');
  }

  return Album.fromJson(jsonDecode(response.body));
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
