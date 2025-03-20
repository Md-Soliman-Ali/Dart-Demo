import 'dart:io';

main() {
  print("Enter Your Name: ");
  String? name = stdin.readLineSync();
  print("Enter Your Age: ");
  int? age = int.parse(stdin.readLineSync()!);

  print('Welcome to Dart ${name?.toUpperCase()} \nYour Age is $age');
}
