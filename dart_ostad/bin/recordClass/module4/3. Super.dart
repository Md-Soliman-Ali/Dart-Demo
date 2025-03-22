class Father {
  void display() {
    print("Display Father Class");
    print("500000 TK");
  }
}

class Student extends Father {
  @override
  void display() {
    super.display();
    print("700000 TK");
  }
}

void main() {
  Student student = Student();
  student.display();
}
