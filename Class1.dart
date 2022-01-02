void main() {
// Integer Class
  int num1 = -1;
  int num2;
  String myString;

  // Returns the absolute value
  num2 = num1.abs();
  print("$num2");

  // Returns the greatest common divisor
  num1 = 3;
  num2 = num1.gcd(6);
  print("$num2");

  // Returns a string representation
  myString = num2.toString();
  print("$myString");

// Double class
  double num_1 = 1.4;
  double num_2;
  int num3;
  String my_String;

  // Returns the absolute value
  num_2 = num_1.abs();
  print("$num_2");

  // Returns a string representation
  my_String = num_2.toString();
  print("$my_String");

  // Returns the greatest integer no greater than member data
  num3 = num_1.floor();
  print("$num3");

  // Returns the greatest integer double value no greater than member data
  num_2 = num_1.floorToDouble();
  print("$num_2");

  // Returns the greatest integer no greater than member data
  num3 = num_1.round();
  print("$num3");

  // Returns the integer double value obtained by discarding any fractional digits
  num_2 = num_1.truncateToDouble();
  print("$num_2");

// 정수, 실수, 문자열에 ","을 이어서 찍고, 각각의 클래스 타입에 속한 멤버 메소드를 호출하는 방법도 가능.
  var num;
  // Returns the absolute value
  num = 1.4.abs();
  print("$num");

  // Returns a string representation
  num = 1.4.toString();
  print("$num");

  // Returns the greatest integer no greater than member data
  num = 1.4.floor();
  print("$num");

  // Returns the greatest integer double value no greater than member data
  num = 1.4.floorToDouble();
  print("$num");

  // Returns the greatest integer no greater than member data
  num = 1.4.round();
  print("$num");

  // Returns the integer double value obtained by discarding any fractional digits
  num = 1.4.truncateToDouble();
  print("$num");
}
