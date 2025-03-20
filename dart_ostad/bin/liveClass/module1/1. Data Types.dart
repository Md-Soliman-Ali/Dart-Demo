main() {
  int numberOne = 1; // 10 50 76 66 265
  String name = "OMAR"; // text value
  bool isTrue = false; // true or false
  double myNum = 10.11;

  //string interpolation

  String firstName = 'Soliman';
  String lastName = 'Ali';
  String fullName = '$firstName $lastName';

  print(fullName);
  print(fullName.contains('Ali')); // true or false
  print(firstName.length);
  print(lastName.toUpperCase());

  print("\n");

  var person = 10;
  // person = 'OMAR'; // string not allow
  person = 18;
  print(person);

  print("\n");

  dynamic person2 = "Karim";
  person2 = 10;
  print(person2);
  print(person2.runtimeType);
  person2 = true;
  print(person2);
  print(person2.runtimeType);
  person2 = 10.50;
  print(person2);
  print(person2.runtimeType);
}
