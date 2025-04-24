import 'dart:io';

void task1() {
  String result = "Task 1 Data";
  print("Task 1 Completed");
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 3);

  /*
  sleep(duration);
  String result = "Task 2 Data";
  print("Task 2 Completed");
  */

  String result = "Empty Value";

  await Future.delayed(duration, () {
    result = "Task 2 Data";
    print("Task 2 Completed");
  });

  return result;
}

void task3(String value) {
  String result = "Task 3 Data";
  print("Task 3 Completed with $value");
}

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void main() {
  performTasks();
}
