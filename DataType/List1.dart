String getObjectType(var para) {
  if (para is List<int>) {
    return ("_List<int>_");
  } else if (para is List<dynamic>) {
    return ("_List<dynamic>_");
  } else {
    return ("_Unknown_");
  }
}

void main() {
  // #1 Simple list with three integers
  var myList1 = [1, 2, 3];
  print("1> myList1(" +
      getObjectType(myList1) +
      ") has ${myList1.length} items: $myList1");

  // #2 List element access using index operator
  for (var index = 0; index < myList1.length; index++) {
    myList1[index] *= index;
  }
  print("2> myList1(" +
      getObjectType(myList1) +
      ") has ${myList1.length} items: $myList1");

  // #3 Generic List for heterogeneous data type encapsulation
  List myList2 = [1, 2.0, "myName"];
  print("3> myList2(" +
      getObjectType(myList2) +
      ") has ${myList2.length} items: $myList2");

  // #4 Constant value assignment for List - 1
  // 상수형 리스트 : List 내부 elem 변경 불가. myList1[0] = 1; // Error
  myList1 = const [11, 12, 13, 14, 15];
  print("4> myList1(" +
      getObjectType(myList1) +
      ") has ${myList1.length} items: $myList1");

  // #5 Constant value assignment for List - 2
  // 상수형 List를 저장하고 있는 변수를 다른 상수형 List로 변경가능.
  myList1 = const [101, 102, 103, 104, 105];
  print("5> myList1(" +
      getObjectType(myList1) +
      ") has ${myList1.length} items: $myList1");

  // #6 ... Operator in List creation - 1
  // List명안의 모든 element를 가져온다.
  // myList1이 null인 경우 Error
  myList1 = [1, 2, 3];
  var myList3 = [...myList1, 4, 5, 6];
  print("6> myList3(" +
      getObjectType(myList3) +
      ") has ${myList3.length} items: $myList3");

  // #7 ... Operator in List creation - 2
  var myList4;
//myList1 = [...myList4, 4, 5, 6]; // Error
// ...? : ...과 동일 기능, 참조 리스트가 null인 경우 error 무시.
  myList1 = [...?myList4, 4, 5, 6];
  print("7> myList1(" +
      getObjectType(myList1) +
      ") has ${myList1.length} items: $myList1");

  // #8 if Statement in List creation
  // List 안을 채울 때 if 조건문을 사용이 가능합니다.
  var myList5 = [...?myList1, if (myList2.length != 0) ...?myList2];
  print("8> myList5(" +
      getObjectType(myList5) +
      ") has ${myList5.length} items: $myList5");

  // #9 for Statement for List manipulation
  for (var item in myList5) {
    print("9>> $item");
  }

  // #10 for Statement in List creation
  // List 안을 채울 때 for 반복문 사용이 가능합니다.
  var myList6 = ['#0', for (var item in myList5) "#$item"];
  print("10> myList6(" +
      getObjectType(myList6) +
      ") has ${myList6.length} items: $myList6");
}
