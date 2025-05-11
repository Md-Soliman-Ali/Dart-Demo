void main() {
  /// List is Mutable [Add, Remove, Update] & Order List

  List<String> city = ["Dhaka", "Rangpur", "Bogura", "Rajshahi"];

  for (int i = 0; i < city.length; i = i + 1) {
    print('City name is ${city[i]}');
  }

  print(city.length);
  print(city.first);
  print(city.last);
  print(city.reversed);
  print(city.isEmpty);
  print(city.isNotEmpty);
  // print(city.single);

  // Slicing
  List cityListAfterSlice = city.sublist(1, 3);
  print(cityListAfterSlice);

  print("\n");

  var numbers = [1, 2, 3, 4, 5, 6];
  print(numbers);

  // Add Last
  numbers.add(7);
  print(numbers);

  // Add Multiple Last
  numbers.addAll([8, 9]);
  print(numbers);

  // Add Item In Specific Position
  numbers.insert(3, 100);
  print(numbers);

  // Add Multiple Item In Specific Position
  numbers.insertAll(4, [200, 300, 400]);
  print(numbers);

  print("\n");

  // Update By Index No
  numbers[1] = 22;
  print(numbers);

  print("\n");

  // Remove From Last
  numbers.removeLast();
  print(numbers);

  // Remove Specific Index
  numbers.removeAt(1);
  print(numbers);

  // Remove Specific Item
  numbers.remove(100);
  print(numbers);

  print("\n");

  // ASC
  numbers.sort();
  print(numbers);

  // DESC
  List numbersReverse = numbers.reversed.toList();
  print(numbersReverse);

  // Clear
  numbersReverse.clear();
  print(numbersReverse);
}
