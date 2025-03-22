/// parent or super class
class Father {
  String? name;
  int? dob;

  void display() {}
}

/// child class
class Student extends Father {
  int? roll;
}

void main() {
  Father father = Father();
  father.name = "Rafiq";

  Student student = Student();
  student.roll = 8572;
  student.name = "OMAR";
  student.display();
}
