/*
 Async 기능은 이런 시간이 많이 걸리는 작업이 완료될 때까지 기다리지 않고
 바로 다음 동작을 이어 나갈수 있도록 합니다. 
 이런 기능이 포함된 함수들은 리턴 값으로 Future 혹은 Stream 객체를 반환 합니다.
 그리고 이런 기능이 가능하도록 하는 문법은 async와 await 입니다.
 */

// Asynchrony1.dart -> 실제론 async이지만 main에서 마치 sync 동기화 과정 느낌의 프로그램이다.
heavyLoadFunction() {
  print("[heavyLoadFunction(): started.");
  var sum = 0;
  for (var tmp = 0; tmp < 100000000; tmp++) {
    sum += tmp;
  }
  print("[heavyLoadFunction(): completed.");
  return sum;
}

// await 구문이 들어있는 함수의 리턴 값은 Future입니다.
// await 구문을 사용하여 미래에 결과를 리턴하는 함수를 async 함수라고 하며, async 구문을 함수명과 {..} 사이에 기입해야 합니다.
Future takeTime() async {
  print("[takeTime(): started.");
  var status = await heavyLoadFunction(); // 함수를 실행하되 결과를 기달리지 않고 다른작업 수행.
  print("[takeTime(): completed and result is $status.");
  return status;
}

Future main() async {
  print("[main(): started.");
  var status = await takeTime(); // await 존재하므로 sync 느낌이다.
  print("[main(): result is $status.");
}
