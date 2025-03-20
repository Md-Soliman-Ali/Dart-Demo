import 'dart:io';

main() {
  var amount = 300;

  if (amount >= 1000) {
    print("ami car e jabo");
  } else if (amount >= 500) {
    print("ami bike e jabo");
  } else if (amount >= 200) {
    print("ami rickshaw e jabo");
  } else {
    print("ame hetey e jabo");
  }

  // Ternary Condition
  amount >= 1000
      ? print("ami car e jabo")
      : (amount >= 500)
      ? print("ami bike e jabo")
      : (amount >= 200)
      ? print("ami rickshaw e jabo")
      : print("ame hetey e jabo");

  print("\n");

  String test; // Non-nullable Variable
  String? test2; // Nullable Variable
  print(test2);

  print("\n");

  print("Enter Your User Name: ");
  String? username = stdin.readLineSync();
  print("Enter Your Password: ");
  int? password = int.parse(stdin.readLineSync()!);

  if (username == 'omar' && password == 12345) {
    print("Login Successful");
  } else if (username == 'omar' && password != 12345) {
    print("User Name is Correct \nTry Correct Password");
  } else if (username != 'omar' && password == 12345) {
    print("Password is Correct \nTry Correct Username");
  } else {
    print("Wrong info...! Try Again");
  }
}
