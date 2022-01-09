// Random Access in dart:io Library
// Random Access : 화일의 특정 위치들을 찾아 다니면서 원하는 지점에 원하는 정보를 저장, 삭제 혹은 읽어내는 작업을 의미합니다.

import 'dart:io';

Future<void> main() async {
  // 소스 프로그램의 줄바꿈을 인식하기 위한 용도.
  final semicolon = ';'.codeUnitAt(0);
  final brace = '}'.codeUnitAt(0);
  var result = <int>[];

  // File opne in read-only random access mode
  final script = File(Platform.script.toFilePath());
  RandomAccessFile file = await script.open(mode: FileMode.read);

  // Deal with each byte.
  while (true) {
    final byte = await file.readByte(); // 화일에서 한 글자씩 읽어들임. 화일의 맨 끝에 도달시 -1 리턴.

    if (byte == -1) {
      // Reach the end of file and complete this program
      await file.close();
      return;
    } else {
      // Store bytes and print when ";" or "}" found
      result.add(byte);
      if ((byte == semicolon) || (byte == brace)) {
        stdout.write(String.fromCharCodes(result));
        result = <int>[];
      }
    }
  }
}
