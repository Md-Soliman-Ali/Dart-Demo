/// Abstract : Not be able to create an Animal object because the Animal class is abstract, which can't be instantiated directly. Use Inheritance
abstract class Student {
  // Abstract Method (No Body, Must Override)
  attendClass();

  examSubmit() {
    print('Joined Exam');
  }
}

// Extends: Only implement or override abstract Method
class Person extends Student {
  String name;

  Person(this.name);

  @override
  attendClass() {
    print("$name Joined Class");
  }
}

// Implements: Must implement or override all of the methods
class BusinessMan implements Student {
  String name;

  BusinessMan(this.name);

  @override
  attendClass() {
    print("$name Business Man Joined Class");
  }

  @override
  examSubmit() {
    print("$name Business Man Joined Exam");
  }
}

main() {
  Person rafi = Person('Rafi');
  rafi.attendClass();

  BusinessMan rahim = BusinessMan('Rahim');
  rahim.examSubmit();

  print("\n");

  /// Polymorphism
  Student taufiq = Person('Taufiq');
  Student omar = BusinessMan('Omar');

  taufiq.attendClass();
  taufiq.examSubmit();
  omar.attendClass();

  print(taufiq.runtimeType);
  print(omar.runtimeType);

  print(taufiq is Person);
  print(taufiq is BusinessMan);
  print(omar is Person);
  print(omar is BusinessMan);

  print(omar is Student);
  print(taufiq is Student);
}
