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

  // 함수를 호출하는 영역에서 에러에 대한 처리 가능.
  try {
    myResult = funcDivide(1, 0);
  } on IntegerDivisionByZeroException {
    print('IntegerDivisionByZeroException');
    myResult = null;
  } catch (e) {
    print('Exception: $e');
    myResult = null;
  }

  funcPrintValue(2, myResult);

  try {
    myResult = funcGetIndexedValue(myList, 4);
  } catch (e) {
    print('Exception: $e');
    myResult = null;
  }

  funcPrintValue(4, myResult);
}
