heavyLoadFunction() {
  print("[heavyLoadFunction(): started.");
  var sum = 0;
  for (var tmp = 0; tmp < 100000000; tmp++) {
    sum += tmp;
  }
  print("[heavyLoadFunction(): completed.");
  return sum;
}

Future takeTime() async {
  print("[takeTime(): started.");
  var status = await heavyLoadFunction();
  print("[takeTime(): completed and result is $status.");
  return status;
}

main() {
  print("[main(): started.");
  var status = takeTime(); // await를 제거함으로써 teakTime()의 결과를 바로 가져옴.
  print("[main(): result is $status.");
}
