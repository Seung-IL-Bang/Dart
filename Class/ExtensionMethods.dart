// Extension Methods는 기존의 클래스에 Method를 Extension 해주는 기능입니다.
extension NumberParsing_v1 on String {
  // String의 멤버 메소드를 호출하는 것 처럼 "." 연산자를 사용할 수 있다.
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }

  String plusWorld() {
    return this + " World";
  }
}

void main() {
  print(int.parse('42'));
  print(double.parse('42'));

  print('42'.parseInt());
  print('42'.parseDouble());

  print("Hello".plusWorld());
}
