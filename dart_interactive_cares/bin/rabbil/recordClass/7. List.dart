void main() {
  var city = ["Dhaka", "Rangpur", "Bogura", "Rajshahi"];

  print(city.length);
  print(city.first);
  print(city.last);
  print(city.reversed);
  print(city.isEmpty);
  print(city.isNotEmpty);
  // print(city.single);

  print("\n");

  var numbers = [1, 2, 3, 4, 5, 6];

  print(numbers);
  numbers.add(7);
  print(numbers);
  numbers.addAll([8, 9]);
  print(numbers);

  numbers.insert(3, 100);
  print(numbers);
  numbers.insertAll(4, [200, 300, 400]);
  print(numbers);

  print("\n");

  numbers[1] = 22;
  print(numbers);

  numbers.removeLast();
  print(numbers);
  numbers.removeAt(1);
  print(numbers);
  numbers.remove(100);
  print(numbers);
}
