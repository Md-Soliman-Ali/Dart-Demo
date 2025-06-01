class Father {
  void family() {
    print("Family Head");
  }
}

class ElderBrother extends Father {}

class ElderSister extends Father {}

class Mother extends Father {}

class YoungerBrother extends Father {}

class YoungerSister extends Father {}

void main() {
  // Father().family();
  // ElderBrother().family();
  // ElderSister().family();
  // Mother().family();
  // YoungerBrother().family();
  YoungerSister().family();
}
