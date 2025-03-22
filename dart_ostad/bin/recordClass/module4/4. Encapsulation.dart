class Student {
  String? name;
  int? _nidNumber; /// _ private

  /// setter method
  set setNidNumber(nidNumber) {
    _nidNumber = nidNumber;
  }

  /// getter method
  int? get getNidNumber {
    return _nidNumber;
  }
}

void main() {
  Student student = Student();
  student.name = "OMAR";
  print(student.name);

  student.setNidNumber = 8572;
  print(student.getNidNumber);
}
