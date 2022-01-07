// Synchronous Operations using await Syntax
/*
 Asynchrony4.dart의 main()에 await 구문을 삽입함으로,
 takeTimeA()와 takeTimeB()의 작업을 마쳐야지 main()을 종료하도록 조정하였습니다.
 이렇게 함으로써, 독립적으로 동시에 수행되지 않고, 순차적으로 수행하도록 변경한 것을 볼 수 있습니다.
*/
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

heavyLoadFunction3() {
  print("[heavyLoadFunction3(): started.");
  var sum = 0;
  for (var tmp = 0; tmp < 10000000; tmp++) {
    sum += tmp;
  }
  print("[heavyLoadFunction3(): completed.");
  return sum;
}

heavyLoadFunction4() {
  print("[heavyLoadFunction4(): started.");
  var sum = 0;
  for (var tmp = 0; tmp < 100000; tmp++) {
    sum += tmp;
  }
  print("[heavyLoadFunction4(): completed.");
  return sum;
}

Future takeTimeA() async {
  print("[takeTimeA(): started.");
  var status1 = await heavyLoadFunction1();
  var status2 = await heavyLoadFunction2();
  print("[takeTimeA(): completed and result is $status1 $status2.");
}

Future takeTimeB() async {
  print("[takeTimeB(): started.");
  var status1 = await heavyLoadFunction3();
  var status2 = await heavyLoadFunction4();
  print("[takeTimeB(): completed and result is $status1 $status2.");
}

Future main() async {
  // main()에 await 구문을 삽입
  print("[main(): started.");
  await takeTimeA();
  await takeTimeB();
  print("[main(): completed.");
}

/*
Dart 언어는 await, async, Future 문법을 사용함으로써,
지연이 발생하는 작업이 있는 경우, 이의 수행을 진행하면서, 
이에 독립적 일수 있는 다른 작업의 수행을 이어가는 것이 가능합니다. 
예제에서 살펴보지는 않았지만, async 함수안에서 입출력과 관련한 반복적인 
작업이 필요한 경우는 async for 구문을 사용하는 것이 필요할 수 있습니다. 
추후 async 기능의 개발에서 오류가 발생하는 경우에는 해당 문법을 살펴보기 바랍니다.
 */