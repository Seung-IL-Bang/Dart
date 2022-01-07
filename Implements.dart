// A person. The implicit interface contains id().
// Person에서 정의한 멤버 변수와 메소드들의 이름과 타입을 유지하면서 (내용은 다르더라도) 구현을 해줘야 합니다.
class Person {
  // In the interface.
  var _name;
  String id() => '${_name}';

  // Not in the interface, since this is a constructor.
  Person(this._name);
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
  print(getID(Person("Person")));
  print(getID(Student("Student", "#01")));
  print(getID(Professor("Professor", "#0A")));
}
