// Multiple await Operation

heavyLoadFunction1() {
  print("[heavyLoadFunction1(): started.");
  var sum = 0;
  for (var tmp = 0; tmp < 100000000; tmp++) {
    sum += tmp;
  }
  print("[heavyLoadFunction1(): completed.");
  return sum;
}

heavyLoadFunction2() {
  print("[heavyLoadFunction2(): started.");
  var sum = 0;
  for (var tmp = 0; tmp < 1000000; tmp++) {
    sum += tmp;
  }
  print("[heavyLoadFunction2(): completed.");
  return sum;
}

// await 구문이 두개 나타나 있으며, 첫번째 await 구문의 완료후, 이어서 두번째 await 구문이 실행됩니다.
Future takeTime() async {
  print("[takeTime(): started.");
  var status1 = await heavyLoadFunction1();
  var status2 = await heavyLoadFunction2();
  print("[takeTime(): completed and result is $status1 $status2.");
  return status1 + status2;
}

Future main() async {
  print("[main(): started.");
  var status = await takeTime();
  print("[main(): result is $status.");
}
