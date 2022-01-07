import 'MakingClass1.dart';
import 'SubClassing1.dart'; // resuing class

// Dart는 subclass의 super class를 원칙적으로 하나로 제한합니다. 하지만 복수의 class를 위해 with를 사용합니다.
class ColorPointDrawer extends ColorPoint with ActivationFlag {
  ColorPointDrawer(var r, var g, var b, var x, var y) : super(r, g, b, x, y) {}

  @override
  String get stringify =>
      (this.flagActivated == true) ? "${super.stringify} is activated" : "null";
}

mixin ActivationFlag /*on ColorPointDrawer*/ {
  // class와 유사하지만, contructor가 없는 것으로 제한하고 있다. 주로 with와 같이쓰임.
  // 위 mixin이 ColorPointDrawer에만 독점적으로 사용된다면 on 명령을 사용하여 with문법을 생략할 수 있다.
  bool flag = true;
  bool get flagActivated => this.flag;
  set flagActivated(bool givenFlag) => (this.flag = givenFlag);
}

void main() {
  var pPoint1 = Point();
  var cPoint1 = ColorPoint();
  print("[01]\$ pPoint1:${pPoint1.stringify}, cPoint1:${cPoint1.stringify}");

  var dPoint1 = ColorPointDrawer(100, 100, 100, 7, 7);
  print("[02]\$ dPoint1:${dPoint1.stringify}");

  dPoint1.flagActivated = false;
  print("[03]\$ dPoint1:${dPoint1.stringify}");
}
