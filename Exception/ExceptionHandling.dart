funcDivide(var para1, var para2) {
  return para1 ~/ para2;
}

funcGetIndexedValue(var paraList, var paraIndex) {
  return (paraList[paraIndex]);
}

funcPrintValue(var para1, var para2) {
  print("#$para1 $para2");
}

void main() {
  var myResult;
  var myList = [1, 2, 3];

  myResult = funcDivide(1, 1);
  funcPrintValue(1, myResult);

  myResult = funcDivide(1, 0); // IntegerDivisionByZeroException
  funcPrintValue(2, myResult);

  myResult = funcGetIndexedValue(myList, 0);
  funcPrintValue(3, myResult);

  myResult = funcGetIndexedValue(myList, 4); // RangeError
  funcPrintValue(4, myResult);
}
