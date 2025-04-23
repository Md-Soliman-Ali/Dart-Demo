class Employee {
  final String name;
  final Gender gender;

  Employee({required this.name, required this.gender});
}

enum Gender { male, female }

void main() {
  Employee maleEmployee = Employee(name: "OMAR", gender: Gender.male);
  Employee femaleEmployee = Employee(name: "FARAH", gender: Gender.female);

  if (maleEmployee.gender == Gender.male) {
    print("Male");
  }
  if (femaleEmployee.gender == Gender.female) {
    print("Female");
  }
}
