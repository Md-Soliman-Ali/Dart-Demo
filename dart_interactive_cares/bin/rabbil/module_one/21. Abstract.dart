abstract class Father {
  baperTaka() {
    print("Total Amount: 10000000");
  }
}

class Son extends Father {
  // Overriding
  baperTaka() {
    print("Total Amount: 5000000");
  }
}

void main() {
  var objSon = Son();
  objSon.baperTaka();
}
