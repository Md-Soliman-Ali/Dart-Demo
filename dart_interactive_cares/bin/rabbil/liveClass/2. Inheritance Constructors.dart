class Father {
  Father() {
    print("I Am Father Constructor");
  }
}

class Son extends Father {
  Son() {
    print("I Am Son Constructor");
  }
}

void main() {
  // Father();
  Son();
}
