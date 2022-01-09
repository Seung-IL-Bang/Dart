import 'dart:io';

Future<void> main() async {
  final semicolon = ';'.codeUnitAt(0);
  final brace = '}'.codeUnitAt(0);
  var result = <int>[];

  // File Open in Stream mode
  Stream<List<int>> stream = File(Platform.script.toFilePath()).openRead();

  await for (var data in stream) {
    for (int i = 0; i < data.length; i++) {
      result.add(data[i]);
      if ((data[i] == semicolon) || (data[i] == brace)) {
        stdout.write(String.fromCharCodes(result));
        result = <int>[];
      }
    }
  }
}
