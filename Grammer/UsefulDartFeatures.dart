// #6 forEach function
void printItem(dynamic item) {
  print("#6 I \u2665 " + item + "!");
}

void main() {
  // #1 Conditional Expression
  var myCondition1 = true;
  var myCondition2 = myCondition1 ? false : true;
  print("#1 $myCondition1 $myCondition2");

  // #2 Bitwise Operators
  var myNum1 = 3 << 1; // 00000011 << 1       == 00000110
  var myNum2 = 3 >> 1; // 00000011 >> 1       == 00000001
  var myNum3 = 3 | 4; // 00000011 | 00000100 == 00000111
  var myNum4 = 3 & 4; // 00000011 & 00000100 == 00000000
  print("#2 $myNum1 $myNum2 $myNum3 $myNum4");

  // #3 NaN Constant
  var myNaN = 0 / 0;
  var myInfinity = 1 / 0;
  print("#3 $myNaN $myInfinity");

  // #4 Unicode presentation
  var myUnicode1 = '\u2665'; // 4-digit hexadecimal
  var myUnicode2 = '\u{1f600}'; // more or less than 4-digit
  print("#4 $myUnicode1 $myUnicode2");

  // #5 Cascade (..) operator
  List myList2 = [];
  myList2
    ..add("Go")
    ..addAll(["C++", "Dart", "Python"])
    ..sort((a, b) => a.compareTo(b));
  print("#5 $myList2");

  // #6 forEach function - 1
  myList2.forEach(printItem);

  // #7 forEach function - 2
  myList2.forEach((item) => print("#7 I \u2665 " + item + "!"));

  // #8 forEach function
  void printItemNested(dynamic item) {
    print("#8 I \u2665 " + item + "!");
  }

  myList2.forEach(printItemNested);

  // #9 Not operators
  var myBool1 = true;
  var myBool2 = 0;
  print("#9 ${!myBool1} ${~myBool2}");
}
