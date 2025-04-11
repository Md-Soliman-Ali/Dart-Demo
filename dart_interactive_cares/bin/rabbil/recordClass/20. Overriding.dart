class Father {
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
  var objFather = Father();
  objFather.baperTaka();

  var objSon = Son();
  objSon.baperTaka();
}
