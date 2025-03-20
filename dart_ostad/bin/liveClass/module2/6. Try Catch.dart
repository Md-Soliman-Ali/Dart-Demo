import 'dart:io';

main() {
  try {
    print("Enter Your Age: ");
    String? input = stdin.readLineSync();
    int age = int.parse(input!);
    age > 18 ? print("Able to Vote") : print("Still Baby");
  } catch (error) {
    print("Error in: $error");
    // throw Exception("Must Be A Number");
  }
}
