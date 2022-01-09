// Reference: https://alvinalexander.com/dart/how-run-multiple-dart-futures-in-parallel

import 'dart:async';

Future<int> async1() async {
  await Future<dynamic>.delayed(const Duration(seconds: 1));
  return 10;
}

Future<int> async2() async {
  await Future<dynamic>.delayed(const Duration(seconds: 2));
  return 20;
}

Future<int> async3() async {
  await Future<dynamic>.delayed(const Duration(seconds: 3));
  return 30;
}

void main() {
  //<- 'async' is not necessary here
  var t1 = DateTime.now();
  Future.wait([async1(), async2(), async3()]).then((List<int> nums) {
    var t2 = DateTime.now();
    var sum = nums.reduce((curr, next) => curr + next);
    print('sum = $sum');
    print('delta = ${t2.difference(t1)}');
    // should be 3, not 6
  });
}
