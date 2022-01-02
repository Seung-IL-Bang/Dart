String getObjectType(var para) {
  if (para is List<int>) {
    return ("_List<int>_");
  } else if (para is List<dynamic>) {
    return ("_List<dynamic>_");
  } else {
    return ("_Unknown_");
  }
}

//  List 클래스 내부의 멤버 데이타와 멤버 메소드
void main() {
  // #1 List sample
  // List 선언시 -> List<dynamic>
  // var 선언시 -> List<int>
  var myList1 = [1, 2, 3];
  print("#1 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #2 List properties
  myList1 = [1, 2, 3];
  print("#2 " +
      "${myList1.first} :: ${myList1[1]} :: ${myList1.last} :: ${myList1.length}");

  // #3 List manipulation using property
  myList1.length = 0; // List내 모든 요소 제거.
  print("#3 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #4 add() method, List 끝에 요소 추가.
  myList1.add(4);
  print("#4 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #5 addAll() method, List 끝에 주어진 시퀀스 순서대로 추가.
  myList1.addAll([5, 6, 7]);
  print("#5 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #6 clear() method
  myList1.clear(); // List내 모든 요소 제거.
  print("#6 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #7 indexOf() method
  var myList2 = ["C++", "Dart", "Python"];
  print("#7 " + myList2.indexOf("Dart").toString());

  // #8 insert() method
  myList2.insert(1, "Go");
  print("#8 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}");

  // #9 sort() method (by length)
  /*
  List 자체를 주어진 순서에 맞도록 바꾸는 작업을 합니다. sort 메소드는 입력 파라메타로 어떻게 정렬을 할건지에 대한 조건을 비교 함수 하나를 주어야 합니다.
  지금은 anonymous 함수로 (a,b) => a.length.compareTo(b.length)가 주어져 있는 것을 볼수 있습니다. 
  문자열 길이에 따라 정렬.
  */
  myList2.sort((a, b) => a.length.compareTo(b.length));
  print("#9 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}");

  // #10 sort() method (by alphabet sequence)
  // 문자열 크기에 따라 정렬.
  myList2.sort((a, b) => a.compareTo(b));
  print("#10 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}");
}
