import 'Human.dart';

main() {
  // without class
  String studentName = 'Rahim';
  String studentClass = 'Class-10';
  String studentAddress = 'Dhaka';

  String studentName2 = 'Karim';
  String studentClass2 = 'Class-10';
  String studentAddress2 = 'Dhaka';

  /// with class
  /// creating an object
  Student student1 = Student();
  student1.studentName = 'Omar';
  student1.studentClass = 'Class-10';
  student1.studentAddress = 'Dhaka';

  print(student1.studentName);
  print(student1.studentAddress);
  print(student1.studentClass);

  print("\n");

  Human rahim = Human();
  rahim.name = 'Rahim';
  rahim.hands = 1;
  print(rahim.hands);
  print(rahim.legs);
  print(rahim.color);
  rahim.moving();
}

class Student {
  String? studentName;
  String? studentClass;
  String? studentAddress;
}
