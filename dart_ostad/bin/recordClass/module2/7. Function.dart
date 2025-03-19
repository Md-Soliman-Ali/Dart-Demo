void greetings(String msg) {
  print("Hello $msg");
}

int addNum(int a, int b) {
  return a + b;
}

void main() {
  greetings("Dart");
  int result = addNum(2, 3);
  print(result);
}
