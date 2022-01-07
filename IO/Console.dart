// #0 Includes console I/O functionality into this program
import 'dart:io';

void main() {
  // #1 write method in stdout class 줄바꿈 미포함
  // Reference: https://api.flutter.dev/flutter/dart-io/Stdout/write.html
  stdout.write("A");
  stdout.write("B");
  stdout.write("\n");

  // #2 writeln method in stdout class 줄바꿈 포함
  // Reference: https://api.flutter.dev/flutter/dart-io/Stdout/writeln.html
  stdout.writeln("A");
  stdout.writeln("B");
  stdout.write("\n");

  // #3 writeln method in stdout class 시퀀스 순서대로 출력 , sep 설정 가능.
  // Reference: https://api.flutter.dev/flutter/dart-io/Stdout/writeAll.html
  List myList = ["A", "B"];
  stdout.writeAll(myList, ":");
  stdout.write("\n");

  // #4 readLineSync method in stdin class 엔터 입력전까지 입력받음
  // Reference: https://api.flutter.dev/flutter/dart-io/Stdin/readLineSync.html
  for (String myInput = ""; myInput != "exit";) {
    stdout.write('type\$ ');
    myInput = stdin.readLineSync().toString();
    stdout.writeln('----> $myInput');
  }
}
