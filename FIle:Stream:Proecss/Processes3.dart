import 'dart:io';

Future<void> main() async {
  final output = File('output.txt').openWrite();
  Process process = await Process.start('ls', ['-l']);

  // Wait for the process to finish; get the exit code.
  // Wait :  비동기로 동작할 기능들이 모두 마쳐지기를 기다린 후, 이들의 결과를 모아서 다시 리턴 합니다
  final exitCode = (await Future.wait([
    process.stdout.pipe(output), // Send stdout to file.
    process.stderr.drain(), // Discard stderr.
    process.exitCode
  ]))[2];

  print('exit code: $exitCode');
}
