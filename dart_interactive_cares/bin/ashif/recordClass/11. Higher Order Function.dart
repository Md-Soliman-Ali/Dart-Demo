int add(int n1, int n2) {
  return n1 + n2;
}

int mul(int n1, int n2) {
  return n1 * n2;
}

/*
int calculator(int n1, int n2, Function calculate) {
  return calculate(n1, n2);
}
*/

Function calculator = (int n1, int n2, Function calculate) {
  return calculate(n1, n2);
};

void main() {
  /*
  int addResult = add(12, 13);
  int mulResult = mul(12, 13);
  print(addResult);
  print(mulResult);
  */

  int addResult = calculator(12, 13, add);
  int mulResult = calculator(12, 13, mul);
  print(addResult);
  print(mulResult);
}
