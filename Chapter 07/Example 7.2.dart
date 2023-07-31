import 'dart:convert';
import 'dart:io';

void main() async {
  final String fileContents = await _readFileAsynchronously('my_file.json');
  final Map<String, dynamic> jsonData = jsonDecode(fileContents);

  print('The first value is: ${jsonData.values.first}');
}

Future<String> _readFileAsynchronously(String filename) async {
  final File file = File(filename);
  final String contents = await file.readAsString();
  return contents.trim();
}
