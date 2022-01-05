void main() {
  // var : limited dynamic type
  // dynamic, Object : dynamic type
  dynamic myInt = 1;
  dynamic myDouble = 1.0;
  dynamic myString = "Dr.Bang";
  dynamic temp; // Initialize null instead of garbage value

  temp = myInt;
  myInt = myDouble;
  myDouble = myString;
  myString = temp;

  print("$myInt $myDouble $myString");

  // when we use final or const, you can skip type.
  // final : 프로그램 전체에서 한번만 값을 저장할 수 있는 변수
  // const : compile 시점에서 상수로 정의
  // 둘 공통점 : 상수와 같이 고정된 값을 저장
  final String firstName = "Seung IL";
  final secondName = "Bang";

  const double myPi = 3.141592;
  const changeRate = 1.3;

  print("$firstName $secondName $myPi $changeRate");
}
