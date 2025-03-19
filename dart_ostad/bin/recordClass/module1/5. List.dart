void main() {
  List<int> numbers = [1, 2, 3];
  List<String> fruits = ["mango", "apple", "banana"];

  print(numbers.length);
  print(numbers.isNotEmpty);
  print(numbers[0]);
  print(fruits.first);
  print(fruits.last);

  // List Data Add
  fruits.insert(1, "jackfruit");
  print(fruits);

  fruits.insertAll(1, ["coconut", "lichi"]);
  print(fruits);

  // List Data Remove
  fruits.removeAt(2);
  print(fruits);

  fruits.remove("jackfruit");
  print(fruits);

  // List Data Update
  fruits[1] = "jackfruit";
  print(fruits);

  // Fixed Length List
  List<int> fixedList = List<int>.filled(3, 0);
  fixedList[0] = 1;
  fixedList[1] = 2;
  fixedList[2] = 3;
  print(fixedList);

  // Growable List
  List<int> growableList = [];
  growableList.add(4);
  growableList.add(5);
  print(growableList);
}
