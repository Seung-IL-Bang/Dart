// Reference: https://dart.dev/articles/libraries/dart-io
// 파일 불러와서 출력하기

import 'dart:io'; // Platform, FIle, Directory class를 활용하기 위함.
import 'dart:convert'; // ascii 코드로 인코딩 하기 위함.

Future<void> main() async {
  // #1 Get the operating system as a string.
  String os = Platform.operatingSystem; // 운영체제의 정보를 리턴.
  print("> OS: $os");

  // #2 Get the URI & Path of the script being run.
  var uri = Platform.script; // 현재 수행중인 프로그램의 위치를 URI 형태로 표시.
  var path = uri.toFilePath(); // URI를 컴퓨터에서 다루는 화일 경로로 변환하기 위함.
  print("> Source File Name: $path");

  // #3 Read and print the source code of THIS program
  var file = File(Platform.script.toFilePath());
  print("> Source File Contents: [start] \n");
  print(
      "${await (file.readAsString(encoding: utf8))}\n"); // 화일의 내용을 문자열로 읽어들일 때 utf8 코드 방식으로 지정하여 출력 오류 방지.
  print("> Source File Contents: [end] \n");
  // 영어만 존재할 경우 encoding: ascii 가능.
}
