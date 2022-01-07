/*
1. Static으로 정의된 변수는 객체에 저장되는 것이 아니고, 클래스에 귀속됩니다.
2. Static 메소드도 클래스에 귀속된 정보들 만으로 객체들과 상관없이 동작합니다.
3. 반대로 객체에 귀속된 this로 접근하는 정보들은 사용할 수 없습니다.
*/

class Point {
  // Instance Variables
  var x;
  var y;
  static int hash = 0;

  // Constructor with optional and default parameters
  Point([var numX = 0, var numY = 0]) {
    this.x = numX;
    this.y = numY;
    hash++;
  }

  // Getter
  String get stringify => "(${this.x},${this.y}) with hash:$hash";

  // Static Getter
  static String get static_stringify => "hash:$hash";
}

void main() {
  // Create 1st Point object
  var p1 = Point();
  print(p1.stringify);

  // Create 2nd Point object
  var p2 = Point();
  print(p2.stringify);

  // Create 3rd Point object
  var p3 = Point();
  print(p3.stringify);

  // Print static memebr variable only
  print(Point.static_stringify);
}
