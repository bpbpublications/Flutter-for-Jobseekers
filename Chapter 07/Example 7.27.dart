import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());
Client http = Client();

final StreamController streamController = StreamController();

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

Stream<Album?> fetchAlbums() async* {
  final List<int> albumsToFetch = List<int>.generate(10, (k) => k + 1);

  for (final int albumToFetch in albumsToFetch) {
    final Album? album = await fetchAlbum(id: albumToFetch);
    yield album;
  }
}

Future<String?> _userInputDialog(BuildContext context) async {
  return await showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text('Create Album'),
        contentPadding: const EdgeInsets.all(24),
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Album name",
            ),
            onFieldSubmitted: (String? value) {
              Navigator.pop(context, value);
            },
          ),
        ],
      );
    },
  );
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

class AlbumList extends StatefulWidget {
  const AlbumList({super.key});

  @override
  _AlbumListState createState() => _AlbumListState();
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String? title = await _userInputDialog(context);
          if (title == null) {
            throw Exception('Cancelled Album creation.');
          }

          if (title.isNotEmpty) {
            final Album album = await createAlbum(title);
            print("Created new album! ${album.title}");
          }
        },
        child: const Icon(Icons.add),
      ),
      body: const AlbumList(),
    );
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
      home: const Home(),
    );
  }
}

class _AlbumListState extends State<AlbumList> {
  final List<Album> _albums = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: streamController.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          _albums.add(snapshot.data);
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: _albums.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(_albums[index].title ?? "Undefined"),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    fetchAlbums();
  }
}
