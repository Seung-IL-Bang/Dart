/* Set
1) 중복된 element를 갖지 않습니다. 즉, 동일한 값이 중복해서 있으면, 하나로 처리합니다.
2) Element의 순서에 의미가 없습니다.
Ref) List의 경우는 이와 다르게, 중복 Element를 허용하며, 프로그래머가 지정한 순서를 유지하였습니다. 
 */

void main() {
  // #1 Simple List and Set
  var myList1 = ["C++", "Dart", "Go", "Python", "Dart"];
  print("#1.1 $myList1");
  var mySet1 = {"C++", "Dart", "Go", "Python", "Dart"};
  print("#1.2 $mySet1");

  // #2 Empty Set and element addition
  var mySet2 = new Set();
  mySet2.add("C");
  mySet2.addAll(mySet1);
  print("#2 $mySet2 :: " + mySet2.length.toString());

  // #3 ...? operator usage
  var mySet3 = {...?mySet2, "R"};
  print("#3 $mySet3");

  // #4 contains() method
  if (mySet3.contains("Dart") == true) {
    print("#4 Dart language is included in mySet3");
  }

  // #5 union() method
  var mySet4 = {"JavaScript", "TypeScript"};
  var mySet5 = mySet3.union(mySet4);
  print("#5 $mySet5");

  // #6 dynamic Set for heterogeneous types
  // Set의 element가 서로 다른 데이타 타입으로 되도록 만드는 경우입니다. List 경우와 마찬가지로 dynamic 객체 형태로 Set을 만드는 generic 문법입니다.
  Set mySet6 = {"C++", "Dart", "Go", "Python", 1, 2, 3};
  print("#6 $mySet6");
}
