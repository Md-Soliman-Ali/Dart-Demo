main() {
  int? age; // Null
  print(age);

  print("\n");

  print(age ?? 20);

  age = 25;
  print(age ?? 20);

  print("\n");

  late String name;

  List<int> numberList = [1, 2, 3];
  List<int?> nulAbleList = [1, 2, 3, null];
}
