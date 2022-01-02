void main() {
  // For Statement
  var sum = 0;
  for (var num = 1; num <= 10; num++) {
    sum = sum + num;
    print("sum is $sum and num is $num.");
  }
  print("Finally, sum is $sum.");

  var temp = 0;
  for (var num1 = 1; num1 <= 9; num1++) {
    for (var num2 = 1; num2 <= 9; num2++) {
      temp = num1 * num2;
      print("$num1 * $num2 = $temp");
    }
  }

  var oNum = 1;
  for (var iNum = 1; iNum < 3; iNum++) {
    print("[OUT] oNum is $oNum and iNum is $iNum.");
  }
  //print("[IN ] oNum is $oNum and iNum is $iNum."); 반복구문 안에서 만든 데이타는 밖에서 사용불가.

  // While Statement
  var sum_ = 0;
  var num = 1;
  while (num <= 10) {
    sum_ = sum_ + num;
    print("sum is $sum_ and num is $num.");
    num++;
  }
  print("Finally, sum is $sum_.");

  // Do-While Statement 반드시 한번은 동작 수행
  var sum_1 = 0;
  var num_1 = 1;
  do {
    sum_1 = sum_1 + num_1;
    print("sum is $sum_1 and num is $num_1.");
    num_1++;
  } while (num_1 <= 10);
  print("Finally, sum is $sum_1.");

  // Break & Continue Statement in Repetition
  var sum_2 = 0;
  for (var num = 1; num <= 10; num++) {
    if (num % 2 == 0) {
      sum_2 = sum_2 + num;
    } else {
      continue;
    }
    print("sum is $sum_2 and num is $num.");
  }
  print("Finally, sum is $sum_2.");

  var sum_3 = 0;
  for (var num = 1; num <= 10; num++) {
    if (num % 2 == 0) {
      sum_3 = sum_3 + num;
    } else {
      continue;
    }
    print("sum is $sum_3 and num is $num.");

    if (sum_3 >= 20) {
      break;
    }
  }
  print("Finally, sum is $sum_3.");
}
