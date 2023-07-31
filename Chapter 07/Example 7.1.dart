import 'dart:convert';
import 'dart:io';

void main() {
  final String fileContents = _readFileSynchronously('my_file.json');
  final Map<String, dynamic> jsonData = jsonDecode(fileContents);

  print('The first value is: ${jsonData.values.first}');
}

String _readFileSynchronously(String filename) {
  final File file = File(filename);
  final String contents = file.readAsStringSync();
  return contents.trim();
}
