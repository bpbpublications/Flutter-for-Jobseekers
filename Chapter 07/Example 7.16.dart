import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

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

Future<Album?> fetchAlbum({required int id}) async {
  final Response response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'));

  if (response.statusCode != 200) {
    print('There was an error fetching the album.');
    return null;
  }

  final Map<String, dynamic> data = jsonDecode(response.body);
  final Album album = Album.fromJson(data);

  return album;
}

Future<List<Album>> fetchAlbums() async {
  final List<int> albumsToFetch = List<int>.generate(20, (i) => i + 1);
  final List<Album> albums = [];

  for (final int albumToFetch in albumsToFetch) {
    final Album? album = await fetchAlbum(id: albumToFetch);
    if (album != null) albums.add(album);
  }
  return albums;
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

class AlbumList extends StatelessWidget {
  const AlbumList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('TODO: Fetch and display a list of albums');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Albums'),
        ),
        body: AlbumList(),
      ),
    );
  }
}
