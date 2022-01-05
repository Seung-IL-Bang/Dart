void main() {
  // String data types
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use ther other delimiter.";

  print("$s1 \n $s2 \n $s3 \n $s4");

  // String 데이타 타입으로 정수,실수 값 변환하기
  String s_1 = 1.toString(); // 정수를 문자열로
  String s_2 = 3.141592.toStringAsFixed(4); // 실수를 소수점 4자리까지만 잘라 문자열로 바꿈.

  print("$s_1 $s_2");

  // 복수 문자열 혹은 복수 줄로 이루어진 String 데이타 만들기
  String s__1 = "My name is ";
  String s__2 = "Seung IL";
  String s__3 = s__1 + s__2; // 문자열 오버라이딩 +

  var s__4 = 'My '
      'name '
      'is '
      'Seung IL';

  dynamic s__5 = ''' 
  My name is Seung IL.
  Dart is lovely.
  '''; // 복수의 줄을 갖는 문자열

  print("$s__3\n$s__4\n$s__5");
}
