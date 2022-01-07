import 'MakingClass1.dart';

class ColorPoint extends Point {
  var red;
  var green;
  var blue;

  // subclass constructor -> super class constructor 호출 가능.
  ColorPoint([int r = 0, int g = 0, int b = 0, int x = 0, int y = 0])
      : super(x, y) {
    this.red = r;
    this.green = g;
    this.blue = b;
  }

  // getter overriding
  @override // 명확하게 overriding을 표현 -> 오류 방지에 도움.
  String get stringify =>
      "${super.stringify} with (${this.red}, ${this.green}, ${this.blue})";

  // + overriding
  ColorPoint operator +(ColorPoint p) =>
      ColorPoint(255, 255, 255, this.x + p.x, this.y + p.y);
}

void main() {
  var cPoint1 = ColorPoint(100, 100, 100, 3, 3);
  print("[01]\$ Color of cPoint1 : " +
      "${cPoint1.red} ${cPoint1.green} ${cPoint1.blue}");
  print("[02]\$ Position of cPoint1 : " + cPoint1.stringify);

  var cPoint2 = ColorPoint();
  // + overriding
  var cPoint3 = cPoint1 + cPoint2;
  print("[03]\$ Color of cPoint3 : " +
      "${cPoint3.red} ${cPoint3.green} ${cPoint3.blue}");

  print("[04]\$ Position of cPoint3 : " + cPoint3.stringify);
}
