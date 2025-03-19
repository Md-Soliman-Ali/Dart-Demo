void main() {
  var dynamicValue = 42;
  int intValue = 100;
  double pi = 3.1416;
  String msg = "Dart";
  bool isFun = true;

  print(dynamicValue);
  print(intValue);
  print(pi);
  print(msg);
  print(isFun);

  print("\n");

  String stringNum = "42";
  int parseNum = int.parse(stringNum);
  print(parseNum);

  print("\n");

  double price = 99.99;
  print(price.round());
}
