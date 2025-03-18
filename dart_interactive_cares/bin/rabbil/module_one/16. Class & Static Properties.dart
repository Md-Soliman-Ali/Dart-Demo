class myClass {
  var myName = "OMAR";
  var alphabet = ["A", "B", "C"];

  static addTwoNumber(int x, int y) {
    print(x + y);
  }
}

void main() {
  var obj = myClass();
  myClass.addTwoNumber(5, 4);
  print(obj.myName);
  print(obj.alphabet[1]);
}
