import 'dart:math';
// 숫자를 다루는 데이타 타입 num
// 제곱근을 계산해주는 함수 sqrt

class Point {
  // Member Variable
  var x;
  var y;

  // default & parameter Constructor
  Point([var numX = 0, var numY = 0]) {
    // optional parameters
    this.x = numX;
    this.y = numY;
  }

  // copy Constructor
  Point.fromPoint(Point origin) {
    this.x = origin.x;
    this.y = origin.y;
  }

  // Member Method
  num distancTo(Point other) {
    var dx = this.x - other.x;
    var dy = this.y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  // Getter 괄호 안묶음 <-> anonymous 입력 파라메타 부분을 괄호로 묶음
  String get stringify => "(${this.x}, ${this.y})";

  // Setter 입력 파라메터 괄호로 묶음
  set increaseX(num value) => this.x += value;
  set increaseY(num value) => this.y += value;
  set setX(num value) => this.x = value;
  set setY(num value) => this.y = value;
}

void main() {
  // default constructor
  var point1 = Point();
  print("[01]\$ point1 is (${point1.x}, ${point1.y})");

  point1.x = 4;
  point1.y = 4;
  print("[01]\$ point1 is (${point1.x}, ${point1.y})");

  // parameter constructor
  var point2 = Point(5, 5);
  print("[02]\$ point2 is (${point2.x}, ${point2.y})");

  var point3 = Point(6);
  print("[03]\$ point3 is (${point3.x}, ${point3.y})");

  // copy constructor
  var point4 = Point.fromPoint(point1);
  print("[04]\$ point4 is (${point4.x}, ${point4.y})");

  // runtimeType Property
  print("[04]\$ point4 Type is ${point4.runtimeType}");

  // Member Method
  print(
      "[05]\$ (${point1.x}, ${point1.y}) ditanceTO (${point2.x}, ${point2.y}) : ${point1.distancTo(point2)}");

  // Getter
  print("[06]\$ Position of point3 : " + point3.stringify);

  // Setter
  point3.setY = 6;
  point3.increaseX = 3;
  point3.increaseY = 3;
  print("[06]\$ Position of point3 : " + point3.stringify);
}
