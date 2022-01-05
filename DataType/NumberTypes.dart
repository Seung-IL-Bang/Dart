// Add : +, Subtract : -, Minus Sign : -, Multiply : *
// Divide {나누기: /, 몫(정수): ~/, 나머지(정수, 실수): %}
// ++, -- 증감연산자(전위, 후위)

void main() {
  dynamic num1 = 9;
  dynamic num2 = 4;
  dynamic res1 = num1 + num2;
  dynamic res2 = num1 - num2;
  dynamic res3 = num1 * num2;
  dynamic res4 = num1 / num2;
  dynamic res5 = num1 ~/ num2;
  dynamic res6 = num1 % num2;

  // print 13 5 36 2.25 2 1 정수끼리
  print("$res1 $res2 $res3 $res4 $res5 $res6");

  num1 = 9.0;
  num2 = 4.0;
  res1 = num1 + num2;
  res2 = num1 - num2;
  res3 = num1 * num2;
  res4 = num1 / num2;
  res5 = num1 ~/ num2;
  res6 = num1 % num2;

  // print 13.0 5.0 36.0 2.25 2 1.0 실수끼리
  print("$res1 $res2 $res3 $res4 $res5 $res6");

  num1 = 9.0;
  num2 = 4;
  res1 = num1 + num2;
  res2 = num1 - num2;
  res3 = num1 * num2;
  res4 = num1 / num2;
  res5 = num1 ~/ num2;
  res6 = num1 % num2;

  // print 13.0 5.0 36.0 2.25 2 1.0 정수와 실수
  print("$res1 $res2 $res3 $res4 $res5 $res6");

  dynamic var1 = 1;
  print("$var1"); // Print 1

  var1 = ++var1 + 10; // 전위
  print("$var1"); // Print 12

  var1 = var1++ + 10; // 후위
  print("$var1"); // Print 22

  // integer in hexadecimal format
  var num_1 = 0x0F;
  // print 15
  print("$num_1");

  // exponential number format
  var num_2 = 1.1e2;
  // print 110.0
  print("$num_2");

  // String -> int
  var num_3 = int.parse('1');
  // print 1
  print("$num_3");

  // String -> double
  var num_4 = double.parse('1.1');
  // print 1.1
  print("$num_4");
}
