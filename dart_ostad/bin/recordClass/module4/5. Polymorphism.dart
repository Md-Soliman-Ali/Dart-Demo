class Father {
  void display() {
    print("Father Class");
  }

  String getName() {
    return "Parent Class";
  }
}

class StudentOne extends Father {
  String name = "Child One";

  @override
  String getName() {
    return name;
  }
}

class StudentTwo extends Father {
  String name = "Child Two";

  @override
  String getName() {
    return name;
  }
}

class StudentThree extends Father {
  String name = "Child Three";

  @override
  String getName() {
    return name;
  }
}

void main() {
  /// reference object
  /// every child class extends one parent class
  Father father;

  father = StudentOne();
  print(father.getName());
  print(father.getName());
  father = StudentTwo();
  print(father.getName());
}
