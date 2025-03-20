main() {
  List<int> numbers = [10, 20, 40, 50, 60];
  print(numbers);
  numbers.add(70);
  print(numbers);
  numbers.addAll([80, 90, 100]);
  print(numbers);
  numbers.insert(2, 30); // index wise add in list
  print(numbers);
  numbers.insertAll(0, [5, 10, 15, 20, 25]);
  print(numbers);
  print(numbers[7]);
  print(numbers.indexOf(25));
  numbers[4] = 0;
  print(numbers);
  print(numbers.reversed);
  numbers.sort();
  print(numbers);
  numbers.removeAt(0); // index value remove
  print(numbers);
  numbers.removeLast();
  print(numbers);
  numbers.remove(50); // value remove
  print(numbers);
  numbers.removeRange(2, 5);
  print(numbers);
  print(numbers.length);
  // numbers.clear();
  // print(numbers);
}
