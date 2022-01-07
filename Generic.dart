class Point<T> {
  T x;
  T y;
  Point(this.x, this.y) {} // type inference를 통해 단순화 가능
  /* 
  Point(T xCord, T yCord)
      : x = xCord,
        y = yCord {}
  */
}

void main() {
  var iPoint = Point<int>(10, 10); // var로 단순화 가능
  Point<double> dPoint = Point<double>(10.0, 10.0);
  Point<String> sPoint = Point<String>("ten", "ten");

  print("Integer : (${iPoint.x}, ${iPoint.y})");
  print("Double : (${dPoint.x}, ${dPoint.y})");
  print("String : (${sPoint.x}, ${sPoint.y})");
}
