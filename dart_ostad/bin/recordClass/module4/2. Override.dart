class Father {
  void display() {
    print("500000 TK");
  }
}

class Student extends Father {
  @override
  void display() {
    print("700000 TK");
  }
}

void main() {
  Student student = Student();
  student.display();
}
