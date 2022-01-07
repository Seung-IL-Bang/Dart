// A person. The implicit interface contains id().
abstract class Person {
  // abstract class -> extends, implements 둘다 가능.
  // In the interface.
  String id(); // abstract method : 함수의 이름과 파라메타만 정의
}

// An Student implementation of the Person interface.
class Student implements Person {
  // Implementation of interface.
  var _name;
  String id() => '${_name}:${_studentNumber}';

  // Not in the interface.
  var _studentNumber;
  Student(this._name, this._studentNumber);
}

// An Professor implementation of the Person interface.
class Professor implements Person {
  // Implementation of interface.
  var _name;
  String id() => '${_name}:${_professorNumber}';

  // Not in the interface.
  var _professorNumber;
  Professor(this._name, this._professorNumber);
}

// Seamless interface for Person, Student and Professor.
String getID(Person person) => person.id();

void main() {
  // Seamless access to Person, Student and Professor.
  // print Student:#01
  print(getID(Student("Student", "#01")));
  // print Professor:#0A
  print(getID(Professor("Professor", "#0A")));
}
