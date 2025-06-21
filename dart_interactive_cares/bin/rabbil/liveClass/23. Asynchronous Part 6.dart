// Dart Isolation (Multi-Tasking)

import 'dart:isolate';

main() async {
  await Isolate.spawn(func1, "Func1");
  await Isolate.spawn(func2, "Func2");
  await Isolate.spawn(func3, "Func3");
}

void func1(String msg) {
  print(msg);
}

void func2(String msg) {
  print(msg);
}

void func3(String msg) {
  print(msg);
}
