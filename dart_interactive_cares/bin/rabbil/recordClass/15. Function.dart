addTwoNumber(int x, int y) {
  print(x + y);
}

void showGreetings(String msg) {
  print(msg);
}

double divTwoNumber(double x, double y) {
  return (x / y);
}

void main() {
  addTwoNumber(5, 4);
  showGreetings("Dart");

  var result = divTwoNumber(10, 2);
  print(result);
}
