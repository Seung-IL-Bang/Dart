void main() {
// String Class
  var string1 = "Hello Dart!";
  var string2;
  var num;

  // Sub-slicing (or Sub-string)
  string2 = string1.substring(0, 5);
  print("$string2");

  // Index Operator
  string2 = string1[0];
  print("$string2");

  // Concatenation
  string2 = "Hello" + " " + "Dart" + "!";
  print("$string2");

  // Using String Properties
  num = string1.length;
  print("$num");

  // Interpolate the value of expressions within strings
  // 변수 이름과 같이 하나의 단어인 경우는 { } 기호가 필요 없습니다.
  string2 = "$string1 has ${string1.length} letters";
  print("$string2");

  // Converts all characters to lower case
  string2 = string1.toLowerCase();
  print("$string2");

  // Converts all characters to upper case
  string2 = string1.toUpperCase();
  print("$string2");

// Boolean Class
  bool bool1 = true;
  var myString;

  // Print boolean object
  print("$bool1"); // true

  // Convert boolean object to String
  myString = bool1.toString();
  print("$myString"); // true
}
